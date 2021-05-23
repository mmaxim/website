FROM nginx

MAINTAINER Mike Maxim "mike@maxim.family"

RUN apt-get update
RUN apt-get install -y vim
COPY . /usr/share/nginx/html/
COPY default.conf /etc/nginx/conf.d
