FROM nginx:latest

RUN apt-get update
RUN apt-get install git -y

COPY ./default.conf /etc/nginx/conf.d/default.conf


RUN git clone https://github.com/gnuboard/gnuboard5.git
RUN mkdir /gnuboard5/data

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]