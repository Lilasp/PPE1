echo où suis-je ?


#BOUCLE IF

if [ 0 = 0 ] #un seul "=" même si condition
# -z $1 --> vérifie que l'argument 1 n'a pas été donné
#-n $1 --> vérifie que l'argument 1 a été donné

then 
#NE PAS OUBLIER LE THEN
	echo "la "
	#exit permet de mettre fin au programme
else 
	echo "le "
fi
#NE PAS OUBLIER LE FI


#BOUCLE FOR

N=0
for ELEMENT in a b c d e #intérieur des guillemets compris comme un seul élément 
do # tant que 
	N=$(expr $N + 1) #expr permet de comprendre la somme 
	echo "le $N ieme élément est $ELEMENT"
done 
#ATTENTION aux ESPACES

#AVEC ls

N=0
for ELEMENT in $(ls) # on peut aussi faire $(seq 1 3 100) --> 1 à 100 avec sauts de 3
do
	N=$(expr $N + 1)
	echo "le $N ieme élément est $ELEMENT"
done 


#Lire les fichiers qui commencent pas R
N=0
for ELEMENT in $(ls )
do
	if [[ $ELEMENT =~ ^R ]] # [[]] et =~ permettent d'introduire une condition regexp
	then 
		echo "Voici le contenu de $ELEMENT : " 
		cat $ELEMENT
	fi
done 
#Autre option
N=0
for ELEMENT in $(ls R*)
do
	echo "Voici le contenu de $ELEMENT : " 
	cat $ELEMENT
done 



#BOUCLE WHILE

#N=0
#while [ -z $1 ]
#do 
#	N=$(expr $N + 1)
#	echo "bonjour $N fois"
#done
#Ctrl + C pour sortir des boucles infinies

N=0
while read LINE
do 
	N=$(expr $N + 1)
	echo "$N je lis : $LINE"
done
echo "fin"
#Ctrl + D pour fin de fichier et afficher fin


FICHIER=$1
N=0
while read LINE
do
	N=$(expr $N + 1)
	echo "$N je lis : $FICHIER"
	cat $FICHIER
done 