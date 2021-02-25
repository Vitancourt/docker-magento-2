#FROM php:7.2.31-fpm-alpine
FROM php:7.3.23-fpm-alpine

RUN apk upgrade --update

# lib dependencies
RUN apk add --no-cache git jpeg-dev libpng-dev freetype-dev libxslt-dev icu-dev libzip-dev $PHPIZE_DEPS

# install extensions
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd bcmath xsl intl pdo pdo_mysql soap zip opcache

# Magento 2 required extensions
RUN docker-php-ext-install sockets

# Install xdebug-2.9.8, wait until Xdebug 3 is fully tested
RUN pecl install xdebug-2.9.8 \
    && docker-php-ext-enable xdebug

# Install Composer
RUN curl -sS https://getcomposer.org/download/1.10.17/composer.phar > composer.phar
RUN mv composer.phar /usr/local/bin/composer
RUN chmod +x /usr/local/bin/composer

# Install Mailhog
RUN wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
RUN chmod +x mhsendmail_linux_amd64
RUN mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail

WORKDIR /src

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
