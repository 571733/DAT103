#!/bin/bash
declare -i sum=0
declare -i number

echo "Skriv inn ett tall"
while read number
do
  echo "skriv inn ett eller avslutt/summer med \"ctrl+d\""
  (( sum+=number ))
done
echo "Summen er $sum"

