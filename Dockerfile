FROM php:8.2-apache

WORKDIR /var/www/html

RUN a2enmod rewrite

COPY . .

RUN docker-php-ext-install mysqli pdo pdo_mysql

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html

EXPOSE 80

CMD ["apache2-foreground"]