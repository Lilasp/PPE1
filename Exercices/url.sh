#!/usr/bin/bash
if [ $# -ne 1 ] #donner un argument après l'exécution du script
then
	echo "ce programme demande un argument"
		exit
fi
OK=0
NOK=0
while read -r LINE ; #séparateur de commandes
do
	echo "la ligne : $LINE"
	if [[ $LINE =~ ^https?:// ]]
	then
		echo "ressemble à une URL valide"
		OK=$(expr $OK + 1)
	else
		echo "ne ressemble pas à une URL valide"
		NOK=$(expr $NOK + 1)
	fi
done < $1
echo "$OK URLs et $NOK lignes douteuses"
