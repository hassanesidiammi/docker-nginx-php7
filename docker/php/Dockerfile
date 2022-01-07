# See https://github.com/docker-library/php/blob/4677ca134fe48d20c820a19becb99198824d78e3/7.0/fpm/Dockerfile
ARG PHP_VERSION=${PHP_VERSION}

FROM php:${PHP_VERSION}-fpm

# Inspired by "Maxence POUTORD"
MAINTAINER Hassane SIDI AMMI <h.sidiammi@gmail.com>

RUN usermod -u 1000 www-data

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# @TODO: Review this.
# Get latest Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

## Create system user to run Composer and Artisan Commands
#RUN useradd -G www-data,root -u $uid -d /home/$user $user
#RUN mkdir -p /home/$user/.composer && \
#    chown -R $user:$user /home/$user

# Set working directory

WORKDIR ${WORKDIR}
