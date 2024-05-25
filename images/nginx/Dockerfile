FROM hwlim78/gaon-nginx:v1.0

RUN apt-get update
RUN apt-get install git -y

COPY ./default.conf /etc/nginx/conf.d/default.conf


# Git이 설치되어 있는지 확인하고, 없다면 설치 후 명령어 실행
RUN if ! command -v git &> /dev/null; then \
        apt-get update && \
        apt-get install -y git \
    ; fi && \
    git clone https://github.com/gnuboard/gnuboard5.git

RUN mkdir /source/data
RUN chmod -R 777 /source

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
