#!/bin/bash

# Creation automatique de comptes
# entree : fichier CSV separe par ;
# login;passwd 
# deploiement


FICH=$1
#ADMIN="admin"
echo $FICH
for i in `cat $FICH`
do
USER=`echo $i | awk -F";" '{ print $1 }'`
PASS=`echo $i | awk -F";" '{ print $2 }'`

/usr/sbin/useradd $USER -s /bin/bash
echo "$USER:$PASS" | /usr/sbin/chpasswd
mkdir /home/$USER
chown $USER /home/$USER

# déploiement des fichiers de jeu
mkdir -p /home/$USER/secret
mkdir -p /home/$USER/source
touch $USER"_code.txt"
"Bienvenue dans le premier fichier du jeu :\n
la première brique du mot de passe c'est...\n
\"Espace,\" ... "
chmod -R 744 /home/$USER
chmod -R 644 /home/$USER/secret
chown -R $USER /home/$USER
if [$USER = "turing"]
then
	chmod -R 700 /home/$USER
	cp mot_final.txt /home/$USER/secret
fi
done

