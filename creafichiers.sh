#!/bin/bash

# Creation automatique de comptes
# entree : fichier CSV separe par ;
# login;passwd 
# deploiement


FICH=$1

echo $FICH

for i in `cat $FICH`
do
USER=`echo $i | awk -F";" '{ print $1 }'`
PASS=`echo $i | awk -F";" '{ print $2 }'`

touch $USER"_code.txt"

done