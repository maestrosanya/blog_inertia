FROM php:8.2-fpm

RUN docker-php-ext-install pdo_mysql

RUN groupadd -g 1000 www
RUN useradd -u 1000 -ms /bin/bash -g www www

USER www

WORKDIR /var/www/blog_inertia
