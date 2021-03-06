# See https://github.com/docker-library/php/blob/4677ca134fe48d20c820a19becb99198824d78e3/7.0/fpm/Dockerfile
FROM php:7.1-fpm

MAINTAINER Maxence POUTORD <h.sidiammi@gmail.com>

RUN apt-get update && \
    apt-get install -y \
        git \
        unzip \
        libpq-dev

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer --version \
    && mkdir /var/www/.composer && chown -R www-data /var/www/.composer \

# Set timezone
    && rm /etc/localtime \
    && ln -s /usr/share/zoneinfo/Europe/Paris /etc/localtime \
    && "date" \

# Type docker-php-ext-install to see available extensions
    && docker-php-ext-install pdo pdo_mysql

# install xdebug
RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

RUN { \
        echo "error_reporting = E_ALL" ; \
        echo "display_startup_errors = On" ; \
        echo "display_errors = On" ; \
        echo "xdebug.remote_enable=1" ; \
        echo "xdebug.remote_connect_back=1" ; \
        echo "xdebug.idekey=\"PHPSTORM\"" ; \
        echo "xdebug.remote_port=9001" ; \
    } >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini

RUN echo 'alias sf3="php bin/console"' >> ~/.bashrc

RUN usermod -u 1000 www-data

WORKDIR /var/www/<PROJECT_FOLDER>
