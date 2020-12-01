FROM php:7.4.4-fpm-alpine

RUN apk upgrade --update

# lib dependencies
RUN apk add --no-cache git jpeg-dev libpng-dev freetype-dev libxslt-dev icu-dev libzip-dev $PHPIZE_DEPS

# install extensions
RUN docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd bcmath xsl intl pdo pdo_mysql soap zip opcache

# Magento 2 required extensions
RUN docker-php-ext-install sockets

RUN pecl install xdebug \
    && docker-php-ext-enable xdebug

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install Mailhog
RUN wget https://github.com/mailhog/mhsendmail/releases/download/v0.2.0/mhsendmail_linux_amd64
RUN chmod +x mhsendmail_linux_amd64
RUN mv mhsendmail_linux_amd64 /usr/local/bin/mhsendmail

RUN chown www-data /src/
RUN chgrp www-data /src/

WORKDIR /src

# Expose port 9000 and start php-fpm server
EXPOSE 9000
CMD ["php-fpm"]
