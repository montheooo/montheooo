# My docker file

FROM prooph/composer:7.4


WORKDIR /app
COPY . /app


RUN composer install

EXPOSE 8000

CMD php artisan serve --host=0.0.0.0 --port=8000