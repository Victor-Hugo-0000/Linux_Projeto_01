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

	useradd carlos -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
	passwd carlos -e
	useradd maria -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
	passwd maria -e
	useradd joao -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_ADM
	passwd joao -e

	useradd sebastiana -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
	passwd sebastiana -e
	useradd roberto -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
	passwd roberto -e
	useradd debora -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_VEN
	passwd debora -e

	useradd josefina -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
	passwd josefina -e
	useradd rogerio -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
	passwd rogerio -e
	useradd amanda -m -s /bin/bash -p $(openssl passwd -6 senha123) -G GRP_SEC
	passwd amanda -e

	echo "Script Finalizado..."
