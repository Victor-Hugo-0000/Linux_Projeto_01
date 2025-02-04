#!/bin/bash

	echo"Atualizando a Maquina e isntalando Servidor Web..."

	apt-get update
	apt-get upgrade -y
	apt-get install apache2 -y
	apt-get install unzip -y

	echo"Baixando os Dados do Repositorio Desejado para a pasta /var/www/html"

	cd /tmp
	wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
	unzip main.zip
	cd linux-site-dio-main
	cp -R * /var/www/html
