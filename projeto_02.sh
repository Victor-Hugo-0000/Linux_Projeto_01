#!/bin/bash

	echo "Criando os Diretorios:"

	mkdir /publico
	mkdir /adm
	mkdir /ven
	mkdir /sec

	echo "Criando Grupos:"

	groupadd GRP_PUBLICO
	groupadd GRP_ADM
	groupadd GRP_VEN
	groupadd GRP_SEC

	echo "Configurando Dono/Grupo:"

	chown root:GRP_PUBLICO /publico
	chown root:GRP_ADM /adm
	chown root:GRP_VEN /ven
	chown root:GRP_SEC /sec

	echo "Configurando as Permissões:"

	chmod 777 /publico
	chmod 770 /adm
	chmod 770 /ven
	chmod 770 /sec

	echo "Criando Usuarios:"

	adduser carlos -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
	passwd carlos -e
	adduser maria -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
	passwd maria -e
	adduser joao -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
	passwd joao -e

	adduser sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
	passwd sebastiana -e
	adduser roberto -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
	passwd roberto -e
	adduser debora -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
	passwd debora -e



	adduser josefina -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
	passwd josefina -e
	adduser rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
	passwd rogerio -e
	adduser amanda -m -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
	passwd amanda -e

	echo "Script Finalizado..."
