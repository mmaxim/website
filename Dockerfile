FROM nginx

MAINTAINER Mike Maxim "mike@maxim.family"

RUN apt-get update
RUN apt-get install -y git

RUN mkdir /tmp/mmaxim.org
RUN git clone https://github.com/mmaxim/website.git /tmp/mmaxim.org

RUN cp /tmp/mmaxim.org/* /usr/share/nginx/html
