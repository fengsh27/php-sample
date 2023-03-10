FROM php:7.4-apache

# install mysqli
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt update && apt upgrade -y

# ENV WORKSPACE /var/www/html/DESSO
# ENV APACHE_DOCUMENT_ROOT=${WORKSPACE}
# ENV APACHE_DOCUMENT_ROOT /var/www/html/DESSO
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/sites-available/*.conf
# RUN sed -ri -e 's!/var/www/html!${APACHE_DOCUMENT_ROOT}!g' /etc/apache2/apache2.conf /etc/apache2/conf-available/*.conf
# WORKDIR ${WORKSPACE}
# COPY index.php ${WORKSPACE}

EXPOSE 80

# CMD ["apache2ctl", "-D", "FOREGROUND"]
