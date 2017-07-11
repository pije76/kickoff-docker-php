# |--------------------------------------------------------------------------
# | Toolbox
# |--------------------------------------------------------------------------
# |
# | TODO

FROM php:7.1-alpine

RUN apk update &&\
    apk upgrade &&\
    apk add libjpeg libjpeg-turbo libjpeg-turbo-dev libpng libpng-dev freetype freetype-dev libmcrypt libmcrypt-dev &&\
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ &&\
    docker-php-ext-install mcrypt zip gd &&\
    docker-php-ext-install opcache &&\
    rm -rf /var/cache/apk/*

# |--------------------------------------------------------------------------
# | Composer
# |--------------------------------------------------------------------------
# |
# | TODO

ENV COMPOSER_VERSION 1.1.2

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=$COMPOSER_VERSION &&\
    chmod +x /usr/local/bin/composer

# |--------------------------------------------------------------------------
# | NodeJS
# |--------------------------------------------------------------------------
# |
# | TODO

ENV NODE_VERSION 6.11.0

RUN echo http://dl-2.alpinelinux.org/alpine/edge/main/ >> /etc/apk/repositories &&\
    echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories &&\
    apk --no-cache add shadow nodejs=$NODE_VERSION-r0 nodejs-npm=$NODE_VERSION-r0 &&\
    npm install -g yarn

# |--------------------------------------------------------------------------
# | Misc
# |--------------------------------------------------------------------------
# |
# | TODO

ARG UID=1000
RUN usermod -u $UID www-data;