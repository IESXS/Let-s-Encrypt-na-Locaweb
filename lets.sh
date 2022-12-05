#!/bin/bash
# Lets encrypt installer
#Obtém o usuário FTP
ftpuser=$(pwd | rev | cut -d '/' -f 1 | rev)
#Verifica se pasta .acme e acme já existem e os removem
acme1='acme.sh/'
acme2='.acme.sh/'
if [ -d "$acme1" ]; then
rm -rf acme.sh/ 
fi
if [ -d "$acme2" ]; then
rm -rf .acme.sh/
fi
clear
echo "Insira o dominio: "
read dominio
mkdir .acme.sh
# Verifica se o site tem extensão www ou não 
ping -q -c5 www.$dominio > /dev/null
if [$? -eq 0]
then
	git clone https://github.com/Neilpang/acme.sh.git
	sh acme.sh/acme.sh --set-default-ca --server letsencrypt
	sh acme.sh/acme.sh --issue -d $dominio -d www.$dominio -w /home/$ftpuser/public_html --server https://acme-v02.api.letsencrypt.org/directory
else 
	git clone https://github.com/Neilpang/acme.sh.git
	sh acme.sh/acme.sh --set-default-ca --server letsencrypt
	sh acme.sh/acme.sh --issue -d $dominio -d /home/$ftpuser/public_html --server https://acme-v02.api.letsencrypt.org/directory
fi
echo ""
echo "Link para validação:"
echo ""
echo "https://decoder.link/sslchecker/$dominio/443"
echo ""
exit