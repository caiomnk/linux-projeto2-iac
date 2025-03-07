#!/bin/bash

# script para atualizar servidor e instalar apache e unzip

echo "Atualizando servidor..."

#atualizar servidor
apt-get update -y

#aplicar atualizacao no servidor
apt-get upgrade -y

echo "Instalando apache 2 e unzip..."

#instalar apache2
apt-get install apache2 -y

#instalar unzip para trabalhar com arquivos compactados
apt-get install unzip -y

#abrir pasta /tmp (temporaria), que usaremos para baixar o arquivo compactado
cd /tmp

echo "Baixando arquivos para copiar no diretório do apache2... (/var/www/html/)"

#baixar o arquivo via linkcom wget (caso não esteja instalado, instalar, mas costuma vir padrão)
wget http://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

#descompactar o arquivo, qundo descompactar o diretorio com os arquivos será o linux-site-dio
unzip main.zip

#abrir diretório criado pelo arquivo descompactado
cd linux-site-dio-main

#copiar os arquivos  da pasta linux-site-dio para o diretório do apache2
cp -R * /var/www/html/

