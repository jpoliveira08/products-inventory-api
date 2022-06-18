FROM php:8.1.0-fpm

RUN apt-get update && apt-get upgrade -y \
    git \
    curl \
    zip \
    unzip

RUN docker-php-ext-install pdo_mysql

COPY --from=composer:latest /usr/bin/composer /usr/local/bin/composer

WORKDIR /the/workdir/path