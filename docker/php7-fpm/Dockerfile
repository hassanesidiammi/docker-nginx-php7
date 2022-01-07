# See https://github.com/docker-library/php/blob/4677ca134fe48d20c820a19becb99198824d78e3/7.0/fpm/Dockerfile
FROM php:${PHP_VERSION}-fpm

# Inspired by "Maxence POUTORD"
MAINTAINER Hassane SIDI AMMI <h.sidiammi@gmail.com>

RUN usermod -u 1000 www-data

WORKDIR /var/www/${PROJECT_FOLDER}
