#!/bin/bash

# Ser ut til grep -A kan brukes 
filnavn=$1 
echo "Hva er hendelsen?"
read hendelse

#if  grep -q "$hendelse"; then
cat $filnavn | grep -ioP "$hendelse\s+\K\w+" | awk '{ SUM += $hendelse} END {print SUM}'
#grep -o "$hendelse\s+\K\w+" $filnavn | awk '{ SUM += $hendelse} END { print SUM }'

#else
#echo "Filen eller hendelsen eksisterer ikke"

#fi

