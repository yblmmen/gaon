FROM hwlim78/gaon-nginx:v1.0

RUN apt-get update
RUN apt-get install git -y

COPY ./default.conf /etc/nginx/conf.d/default.conf


RUN git clone https://github.com/yblmmen/gaon.git
RUN mkdir /source/data

EXPOSE 80

ENTRYPOINT ["nginx","-g","daemon off;"]
