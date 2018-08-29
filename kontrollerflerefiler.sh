#!/bin/bash

# & brukes i dette tilfelle sånn at programmet kan sjekke status på neste fil, ved å la nåværende fil kjøre i bakgrunnen

for FIL in $*
do
./filkontroll.sh $FIL 15 &
done
