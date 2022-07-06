# My docker file

#FROM prooph/composer:7.4
FROM php:7.4-cli


WORKDIR /app
COPY . /app

RUN php composer-setup.php --install-dir=/usr/local/bin --filename=composer

RUN composer install

EXPOSE 8000

#CMD php artisan serve --host=0.0.0.0 --port=8000