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
echo "$USER:$PASS"
#echo "$PASS\n$PASS" | passwd $USER 
echo -e "$PASS\n$PASS" | passwd $USER
#echo "$USER:$PASS" | /usr/sbin/chpasswd
done