FROM php:7.1-fpm-alpine

RUN apk update &&\
    apk upgrade &&\
    apk add libjpeg libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev freetype freetype-dev libmcrypt libmcrypt-dev &&\
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ &&\
    docker-php-ext-install mcrypt zip gd &&\
    docker-php-ext-install opcache &&\
    docker-php-ext-install pdo_mysql &&\
    rm -rf /var/cache/apk/*

RUN echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories &&\
    apk --no-cache add shadow