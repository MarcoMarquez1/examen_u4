# Usa una imagen PHP oficial
FROM php:8.0-apache

# Copia los archivos del proyecto al contenedor
COPY . /var/www/html/

# Expón el puerto 10000
EXPOSE 10000

# Comando de inicio para ejecutar el servidor PHP
CMD ["php", "-S", "0.0.0.0:10000", "-t", "/var/www/html"]
