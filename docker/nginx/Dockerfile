FROM debian:jessie

MAINTAINER Maxence POUTORD <h.sidiammi@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx

ADD nginx.conf /etc/nginx/
ADD symfony.conf /etc/nginx/sites-available/<PROJECT_FOLDER>.conf

RUN \
    ln -s /etc/nginx/sites-available/<PROJECT_FOLDER>.conf /etc/nginx/sites-enabled/<PROJECT_FOLDER> \
    && rm /etc/nginx/sites-enabled/default \
    && echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf \
    && usermod -u 1000 www-data

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
