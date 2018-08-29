#!/bin/bash



filendret=0
eksistens=false

while true; do

sleep $2

# Hvis eksistens er false, så fantes ikke filen, men om den finner den betyr det at den nå ble opprettet


if [ -e $1 ] && [ "$eksistens" == false ];
 then
echo "Filen $1 er opprettet"
eksistens=true
filendret=`stat -c %Y $1`


#Hvis den ikke finner filen, men eksistens er lik true, betyr det at filen er eksistert, men nå er slettet.

elif [ ! -e $1 ] && [  "$eksistens" == true ];
then
echo "Filen $1 har blitt slettet"
eksistens=false



elif [ -e $1 ] && [ "$eksistens" == true ];  then
	if [ "$filendret" == `stat -c %Y $1` ]; then
		echo "Filen $1 eksisterer"
	else
		echo "Filen $1 har blitt endret"
		filendret=`stat -c %Y $1`
fi
# Hvis eksistens er false samtidig som at programmet ikke finner filen, har den aldri eksistert

elif [ ! -e $1 ] && [  "$eksistens" == false ]; then
echo "Finner ingen spor etter filen $1...." 

fi

done
