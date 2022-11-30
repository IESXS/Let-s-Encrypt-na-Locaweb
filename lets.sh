#!/bin/bash
# Lets encrypt installer
ftpuser=$(pwd | rev | cut -d '/' -f 1 | rev)
acme1='/acme/'
acme2='.acme/'
if [ -d "$acme1" ]; then
mv acme/ acme_old
fi
if [ -d "$acme2" ]; then
mv .acme/ .acme_old
fi
clear
echo "Insira o dominio: "
read dominio
mkdir .acme.sh
git clone https://github.com/Neilpang/acme.sh.git
sh acme.sh/acme.sh --set-default-ca --server letsencrypt
sh acme.sh/acme.sh --issue -d $dominio -d www.$dominio -w /home/$ftpuser/public_html --server https://acme-v02.api.letsencrypt.org/directory
echo ""
echo "Link para validação:"
echo ""
echo "https://decoder.link/sslchecker/$dominio/443"
echo ""
exit
