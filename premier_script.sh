echo où suis-je ?

if [ 0 = 0 ] #un seul "=" même si condition
# -z $1 --> vérifie que l'argument 1 n'a pas été donné
#-n $1 --> vérifie que l'argument 1 a été donné

then 
#NE PAS OUBLIER LE THEN
	echo "la "
else 
	echo "le "
fi
#NE PAS OUBLIER LE FI
