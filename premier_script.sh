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
for ELEMENT in a b c d e
do # tant que 
	N=$(expr $N + 1)
	echo "le $N ieme élément est $ELEMENT"
done 
#ATTENTION aux ESPACES

