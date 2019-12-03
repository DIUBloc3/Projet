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

userdel -r -f $USER
done