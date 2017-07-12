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
# | Edge repositories
# |--------------------------------------------------------------------------
# |
# | TODO

RUN echo http://dl-2.alpinelinux.org/alpine/edge/main/ >> /etc/apk/repositories &&\
    echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories

# |--------------------------------------------------------------------------
# | OpenSSL
# |--------------------------------------------------------------------------
# |
# | TODO

ENV OPEN_SSL_VERSION 1.0.2l-r0

RUN apk --no-cache add openssl=$OPEN_SSL_VERSION

# |--------------------------------------------------------------------------
# | Composer
# |--------------------------------------------------------------------------
# |
# | TODO

ENV COMPOSER_VERSION 1.1.2

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=$COMPOSER_VERSION &&\
    chmod +x /usr/local/bin/composer &&\
    apk --no-cache add git

# |--------------------------------------------------------------------------
# | NodeJS
# |--------------------------------------------------------------------------
# |
# | TODO

ENV NODE_VERSION 6.11.0-r0

RUN apk --no-cache add nodejs=$NODE_VERSION nodejs-npm=$NODE_VERSION &&\
    npm install -g yarn

# |--------------------------------------------------------------------------
# | Permissions issues workaround
# |--------------------------------------------------------------------------
# |
# | TODO

ARG UID=1000
RUN apk --no-cache add shadow &&\
    usermod -u $UID www-data;