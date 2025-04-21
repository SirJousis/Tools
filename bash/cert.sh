#!/bin/bash

echo "[+++ CERT GENERATOR +++] "
echo ""
echo "by 0xEden"
echo ""
echo ""
echo "[1] Generar clave privada"
echo "[2] Verificar CSR"
echo "[3] Generar certificado"
read -p "[+] Elige opcion: " opcion

### CLAVE PRIVADA ###
if [ $opcion -eq 1 ]; then
	echo "Creando directorios"
	read -p "[+] Nombre del certificado: " cert_name
	mkdir $cert_name
	sleep 1
	cd $cert_name
	sleep 1
	openssl req -utf8 -nodes -sha256 -newkey rsa:2048 -keyout private.key -out "$cert_name".csr
### VERIFICAR CSR ###
elif [ $opcion -eq 2 ]; then
	echo "[+] Escribe el nombre del certificado del que quieras csr"
	read cert
	if [ -d "$cert" ]; then
		cd $cert
		sleep 1
		openssl req -text -noout -verify -in "$cert".csr
	else
		echo "[!] El directorio para ese certificado no existe, ejecuta la opción 1"
	fi
## SELF sign cert ##
elif [ $opcion -eq 3 ]; then
	echo "Cual es el certificado"
	read cert
	if [ -d "$cert" ]; then
		cd $cert
		sleep 1
		openssl req -x509 -days 365 -key private.key -in "$cert".csr -out "$cert".crt
	fi
else
	echo "[!] Opción incorrecta"

fi
