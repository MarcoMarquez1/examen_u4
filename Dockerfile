# Dockerfile para PHP
FROM php:8.1-apache
WORKDIR /var/www/html

# Copiar todos los archivos al contenedor
COPY . .

# Habilitar reescritura para Apache
RUN a2enmod rewrite

# Configurar el servidor para servir el proyecto
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/var/www/html"]
