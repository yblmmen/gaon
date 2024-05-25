FROM hwlim78/gaon-nginx:v1.0

RUN apt-get update
RUN apt-get install git -y

COPY ./default.conf /etc/nginx/conf.d/default.conf


# Git 설치 여부 확인 후, 없다면 Git 설치
RUN git --version || { apt-get update && apt-get install -y git; }
RUN mkdir /source/data
RUN chmod -R 777 /source

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
