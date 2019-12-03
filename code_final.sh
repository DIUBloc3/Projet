#!/bin/bash
FICH=$1
UN='/home/'$USER'/final/code_final.sh'
echo $UN
if [ -f $UN ]
then :
cat $1 | tr "D-zA-C" "A-z"
else :
echo "Vous n'êtes pas dans le bon répertoire"
fi
