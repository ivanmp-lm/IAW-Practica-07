#!/bin/bash

#Mostrar comandos
set -x

#Clonar repositorio con todos los archivos necesarios
git clone https://github.com/ivanmp-lm/IAW-Practica-7.git
cd IAW-Practica-7/

#Actualizar repositorios
apt update

#Instalar nginx
apt install nginx -y

#Copiar archivo con la configuración de Nginx
cp default /etc/nginx/sites-available/

#Reiniciar servicio Nginx
systemctl restart nginx
