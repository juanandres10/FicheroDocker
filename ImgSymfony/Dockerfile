#Imagen base de php 7.2 con apache que luego cambiaremos el puerto
FROM php:7.2-apache

#Actualizamos los repositorios
RUN apt-get update

#Instalamos software comun  de propietario (Requisito de php 7.2)
RUN apt-get install -y software-properties-common

#Instlamos los paquetes que comprimen y descomprimen zip (Requisito de symfony)
RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip

#Instalamos los modulos de php 7.2 que necesitamos
RUN docker-php-ext-install zip pdo_mysql

#Instalamos paquetes que necesitamos para instalar symfony
RUN apt-get install -y curl git nano

#Exponemos el puerto 80
EXPOSE 80

#Exponemos el puerto 443
EXPOSE 443
