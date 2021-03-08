#!/bin/bash

echo "O pc 1 está ligado ?"
read pc1
echo
echo "O pc 2 está ligado ?"
read pc2
echo

if [ "$pc1" = "desligado" -a "$pc2" = "desligado" ]; then
    echo "valor: 0"
    exit
fi

if ! [ "$pc1" = "ligado" -o "$pc1" = "desligado" -a "$pc2" = "ligado" -o "$pc2" = "desligado" ]; then
    echo "Valor de entrada deve ser ligado, ou desligado !"
    exit
fi

if [ "$pc1" = "ligado" -a "$pc2" = "ligado" ]; then
    echo "valor: 15"
elif [ "$pc1" = "ligado" -a "$pc2" = "desligado" ]; then
    echo "valor: 5"
else
    echo "valor: 10"
fi