 
목차
사전 준비 (#사전-준비)
기존 데이터 백업 (#기존-데이터-백업)
Kubernetes 배포 (#kubernetes-배포)
DB 복원 (#db-복원)
상태 확인 (#상태-확인)
문제 해결 팁 (#문제-해결-팁)
결과 (#결과)
사전 준비
1.1. Ingress Controller 설치
Kubernetes에서 Ingress를 사용하려면 nginx-ingress와 같은 Ingress Controller가 필요합니다.
bash
kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/cloud/deploy.yaml
확인:
bash
kubectl get pods -n ingress-nginx
1.2. Cert-Manager 설치 (HTTPS용)
Let's Encrypt 인증서를 자동으로 발급받기 위해 cert-manager를 설치합니다.
bash
kubectl apply -f https://github.com/cert-manager/cert-manager/releases/download/v1.13.3/cmctl.yaml
1.3. ClusterIssuer 설정
Let's Encrypt를 사용하기 위한 ClusterIssuer를 정의합니다.
cluster-issuer.yaml:
yaml
apiVersion: cert-manager.io/v1
kind: ClusterIssuer
metadata:
  name: letsencrypt-prod
spec:
  acme:
    server: https://acme-v02.api.letsencrypt.org/directory
    email: your-email@example.com # 본인의 이메일로 변경
    privateKeySecretRef:
      name: letsencrypt-prod
    solvers:
    - http01:
        ingress:
          class: nginx
적용:
bash
kubectl apply -f cluster-issuer.yaml
기존 데이터 백업
2.1. MariaDB 백업
기존 Docker Compose 환경에서 MariaDB 데이터를 백업합니다.
bash
docker exec <mariadb-container-name> mysqldump -u root -p gaon_db > gaon_db_backup.sql
<mariadb-container-name>은 실제 컨테이너 이름으로 대체하세요.
비밀번호 입력 후 gaon_db_backup.sql 파일이 생성됩니다.
Kubernetes 배포
3.1. 통합 YAML 파일
아래는 nginx, php-fpm, mariadb, ingress를 포함한 단일 YAML 파일입니다. Ingress에 ingressClassName: nginx를 추가하여 nginx-ingress 컨트롤러가 처리하도록 설정했습니다.
k8s-gaondisystem.yaml:
```yaml
PersistentVolumeClaim for MariaDB
apiVersion: v1
kind: PersistentVolumeClaim
metadata:
  name: mariadb-pvc
spec:
  accessModes:
    - ReadWriteOnce
  resources:
    requests:
      storage: 5Gi
ConfigMap for Nginx Configuration
apiVersion: v1
kind: ConfigMap
metadata:
  name: nginx-config
data:
  nginx.conf: |
    user  nginx;
    worker_processes  1;
    error_log  /var/log/nginx/error.log warn;
    pid        /var/run/nginx.pid;
    events {
      worker_connections  1024;
    }
    http {
      server {
        listen 80;
        server_name gaondisystem.co.kr;
        root /var/www/html;
        index index.php;
        location ~ .php$ {
          fastcgi_pass php-fpm:9000;
          fastcgi_index index.php;
          fastcgi_param SCRIPT_FILENAME $document_root$fastcgi_script_name;
          include fastcgi_params;
        }
      }
    }
MariaDB Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: mariadb
spec:
  replicas: 1
  selector:
    matchLabels:
      app: mariadb
  template:
    metadata:
      labels:
        app: mariadb
    spec:
      containers:
      - name: mariadb
        image: mariadb:11.3.2
        env:
        - name: MYSQL_ROOT_PASSWORD
          value: "rootpassword"
        - name: MYSQL_DATABASE
          value: "gaon_db"
        ports:
        - containerPort: 3306
        volumeMounts:
        - mountPath: /var/lib/mysql
          name: mariadb-storage
      volumes:
      - name: mariadb-storage
        persistentVolumeClaim:
          claimName: mariadb-pvc
MariaDB Service
apiVersion: v1
kind: Service
metadata:
  name: mariadb
spec:
  selector:
    app: mariadb
  ports:
  - port: 3306
    targetPort: 3306
  type: ClusterIP
PHP-FPM Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: php-fpm
spec:
  replicas: 1
  selector:
    matchLabels:
      app: php-fpm
  template:
    metadata:
      labels:
        app: php-fpm
    spec:
      initContainers:
      - name: git-clone
        image: alpine/git
        args:
        - clone
        - --single-branch
        - --
        - https://github.com/yblmmen/gaon.git
        - /var/www/html
        volumeMounts:
        - mountPath: /var/www/html
          name: app-volume
      containers:
      - name: php-fpm
        image: php:7.4-fpm
        ports:
        - containerPort: 9000
        env:
        - name: DB_HOST
          value: "mariadb"
        - name: DB_NAME
          value: "gaon_db"
        - name: DB_USER
          value: "root"
        - name: DB_PASSWORD
          value: "rootpassword"
        volumeMounts:
        - mountPath: /var/www/html
          name: app-volume
        command: ["/bin/sh", "-c"]
        args:
        - |
          apt-get update && apt-get install -y libmariadb-dev && 
          docker-php-ext-install mysqli pdo pdo_mysql && 
          chown -R www-data:www-data /var/www/html && 
          chmod -R 755 /var/www/html && 
          php-fpm
      volumes:
      - name: app-volume
        emptyDir: {}
PHP-FPM Service
apiVersion: v1
kind: Service
metadata:
  name: php-fpm
spec:
  selector:
    app: php-fpm
  ports:
  - port: 9000
    targetPort: 9000
  type: ClusterIP
Nginx Deployment
apiVersion: apps/v1
kind: Deployment
metadata:
  name: nginx
spec:
  replicas: 1
  selector:
    matchLabels:
      app: nginx
  template:
    metadata:
      labels:
        app: nginx
    spec:
      containers:
      - name: nginx
        image: nginx:1.25
        ports:
        - containerPort: 80
        volumeMounts:
        - mountPath: /etc/nginx/nginx.conf
          name: nginx-config
          subPath: nginx.conf
        - mountPath: /var/www/html
          name: app-volume
        command: ["/bin/sh", "-c"]
        args:
        - "chown -R nginx:nginx /var/www/html && chmod -R 755 /var/www/html && nginx -g 'daemon off;'"
      volumes:
      - name: nginx-config
        configMap:
          name: nginx-config
      - name: app-volume
        emptyDir: {}
Nginx Service
apiVersion: v1
kind: Service
metadata:
  name: nginx
spec:
  selector:
    app: nginx
  ports:
  - port: 80
    targetPort: 80
  type: ClusterIP
Ingress with TLS and ingressClassName
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: gaon-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /$1
    cert-manager.io/cluster-issuer: letsencrypt-prod
spec:
  ingressClassName: nginx # nginx-ingress 컨트롤러 지정
  tls:
hosts:
gaondisystem.co.kr
secretName: gaon-tls
rules:
host: gaondisystem.co.kr
http:
  paths:
path: /
pathType: Prefix
backend:
  service:
name: nginx
port:
  number: 80

### 3.2. YAML 파일 적용
```bash
kubectl apply -f k8s-gaondisystem.yaml
DB 복원
4.1. MariaDB Pod 확인
bash
kubectl get pods
MariaDB Pod 이름을 확인합니다 (예: mariadb-xyz).
4.2. 백업 파일 업로드
bash
kubectl cp gaon_db_backup.sql <mariadb-pod-name>:/tmp/gaon_db_backup.sql
4.3. 데이터 복원
bash
kubectl exec -it <mariadb-pod-name> -- mysql -u root -prootpassword gaon_db < /tmp/gaon_db_backup.sql
4.4. 복원 확인
bash
kubectl exec -it <mariadb-pod-name> -- mysql -u root -prootpassword -e "SHOW DATABASES; USE gaon_db; SHOW TABLES;"
상태 확인
5.1. Pod 및 서비스 확인
bash
kubectl get pods
kubectl get services
kubectl get ingress
5.2. 웹 접속 테스트
bash
curl -k https://gaondisystem.co.kr
또는 브라우저에서 https://gaondisystem.co.kr 접속을 확인하세요.

문제 해결 팁
Ingress 관련 에러:

확인: kubectl describe ingress gaon-ingress

해결: ingressClassName: nginx가 올바르게 설정되었는지, nginx-ingress 컨트롤러가 실행 중인지 확인 (kubectl get pods -n ingress-nginx).

PHP 의존성 에러:

로그 확인: kubectl logs <php-fpm-pod-name>

해결: php-fpm 컨테이너의 args에 필요한 패키지 설치 명령 추가.

403/503 에러:

로그 확인: kubectl logs <nginx-pod-name>

해결: 권한 문제라면 chown/chmod 명령 조정.

DB 연결 실패:

환경 변수 확인: kubectl describe pod <php-fpm-pod-name>
서비스 확인: kubectl get svc mariadb.

결과

PHP: 버전 7.4로 설정, 의존성(mysqli, pdo, pdo_mysql) 설치.

MariaDB: 버전 11.3.2로 설정, 기존 데이터 복원.

Nginx: 소스 파일 권한 문제 해결, HTTPS로 gaondisystem.co.kr 제공.

소스 파일: GitHub(https://github.com/yblmmen/gaon.git)에서 가져와 /var/www/html에 배치.

Ingress: ingressClassName: nginx 추가로 nginx-ingress 컨트롤러와 정상 연동.

접속: https://gaondisystem.co.kr로 정상 동작.

 
