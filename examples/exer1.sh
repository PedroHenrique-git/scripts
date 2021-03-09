#!/bin/bash

medico1="Pedro"
medico2="Marcelo"
medico3="Paulo"

echo "Seu nome: " 
read nome
echo "Seja bem vinda(o) $nome"
echo 
echo

echo "Em qual turno você deseja se consultar: manha, tarde ou noite ?" 
read turno

if [ "$turno" = "manha" ];then
        echo "Sua consulta está marcada com o médico $medico1"
    elif [ "$turno" = "tarde" ];then
        echo "Sua consulta está marcada com o médico $medico2"
    else
        echo "Sua consulta está marcada com o médico $medico3"
fi

sleep 2
echo
echo "Consulta marcada !"
sleep 4
exit