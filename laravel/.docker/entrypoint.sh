#!/bin/bash

#On error no such file initdb.sql, execute in terminal - dos2unix .docker\initdb.sql
cp .env.example .env
chown -R www-data:www-data .
composer install
php artisan key:generate
php artisan migrate

php-fpm