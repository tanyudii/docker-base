FROM php:7.4-fpm-alpine

WORKDIR /var/www/html

RUN apt-get update && apt-get install -y libmcrypt-dev
RUN docker-php-ext-install pdo pdo_mysql mcrypt
