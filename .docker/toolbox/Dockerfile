FROM php:7.1-alpine

# |--------------------------------------------------------------------------
# | Main PHP dependencies
# |--------------------------------------------------------------------------
# |
# | Installs the main PHP dependencies
# |

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
# | Installs the edge repositories, as some packages are not available by
# | default in the current version of Alpine used by the PHP image.
# |

RUN echo http://dl-2.alpinelinux.org/alpine/edge/main/ >> /etc/apk/repositories &&\
    echo http://dl-2.alpinelinux.org/alpine/edge/community/ >> /etc/apk/repositories

# |--------------------------------------------------------------------------
# | OpenSSL
# |--------------------------------------------------------------------------
# |
# | Installs openssl command, which is required for generating the self-signed
# | certificate and the .htdigest file.
# |

ENV OPEN_SSL_VERSION 1.0.2l-r0

RUN apk --no-cache add openssl=$OPEN_SSL_VERSION

# |--------------------------------------------------------------------------
# | Composer
# |--------------------------------------------------------------------------
# |
# | Installs Composer and Git to easily manage your PHP dependencies.
# |

ENV COMPOSER_VERSION 1.1.2

RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer --version=$COMPOSER_VERSION &&\
    chmod +x /usr/local/bin/composer &&\
    apk --no-cache add git

# |--------------------------------------------------------------------------
# | NodeJS
# |--------------------------------------------------------------------------
# |
# | Installs NodeJS, npm and yarn. The later will allow you to easily manage
# | your frontend dependencies.
# |

ENV NODE_VERSION 6.11.0-r0

RUN apk --no-cache add nodejs=$NODE_VERSION nodejs-npm=$NODE_VERSION &&\
    npm install -g yarn

# |--------------------------------------------------------------------------
# | Permissions issues workaround
# |--------------------------------------------------------------------------
# |
# | Installs shadow package to enable usermod command.
# | On Linux, the UID arg will be set with the UID of the current user
# | from the host.
# |

ARG UID=1000
RUN apk --no-cache add shadow &&\
    usermod -u $UID www-data;