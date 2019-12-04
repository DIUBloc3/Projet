#!/bin/bash

# Creation automatique de comptes
# entree : fichier CSV separe par ;
# login;passwd 
# deploiement


FICH=$1

echo $FICH
groupadd NSI
for i in `cat $FICH`
do
USER=`echo $i | awk -F";" '{ print $1 }'`
PASS=`echo $i | awk -F";" '{ print $2 }'`

/usr/sbin/useradd $USER -s /bin/bash
echo "$USER:$PASS"
#( echo "$USER:$PASS/n") | chpasswd 1>/dev/null 2>&1

echo "$USER:$PASS" | /usr/sbin/chpasswd 
mkdir /home/$USER
chown $USER /home/$USER
adduser $USER NSI

# déploiement des fichiers de jeu
mkdir -p /home/$USER/secret
mkdir -p /home/$USER/source
cp bienvenue.txt /home/$USER
cp infos.txt /home/$USER/secret
chmod -R 744 /home/$USER
chmod -R 744 /home/$USER/secret
chown -R $USER:NSI /home/$USER
done
cp etape3.txt /home/shannon/source
cp code4.py /home/shannon/source
chown -R shannon:NSI /home/shannon
chmod -R 775 /home/shannon
chmod 444 /home/shannon/source/code4.py

cp etape5.txt /home/boole
chown boole:NSI /home/boole/etape4.txt
chmod 400 /home/boole/etape4.txt

cp derniere_etape.txt /home/turing
chown turing:NSI /home/turing/derniere_etape.txt
chmod 400 /home/turing/derniere_etape.txt
cp code_final.sh /home/turing
chown turing:NSI /home/turing/code_final.sh
chmod 400 /home/turing/code_final.sh
cp code_final.txt /home/turing
chown turing:NSI /home/turing/code_final.txt
chmod 400 /home/turing/code_final.txt


