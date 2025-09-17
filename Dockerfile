# Image PHP avec FPM
FROM php:8.2-fpm

# Installer Nginx
RUN apt-get update && apt-get install -y nginx

# Copier le code source
COPY . /var/www/html

# Copier la configuration Nginx si tu en as une
# COPY default.conf /etc/nginx/conf.d/default.conf

# Exposer le port 80
EXPOSE 80

# Lancer PHP-FPM et Nginx
CMD service nginx start && php-fpm
