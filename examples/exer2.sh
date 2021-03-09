#!/bin/bash

echo "Carros disponíveis: "
echo 
echo "Ferrari e Lamborghini"
echo
echo "Celta"
echo
echo "Palio e Uno"
echo
echo "Deseja ver a classe de qual carro: "
read carro
echo

if [ "$carro" = "Ferrari" -o "$classe" = "Lamborghini" ];then
    echo "Classe A";
elif [ "$carro" = "Celta" ];then
    echo "Classe B"
else
    echo "Classe C"
fi

exit