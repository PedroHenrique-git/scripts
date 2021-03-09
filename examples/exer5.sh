#!/bin/bash

echo "Digite seu nome: "
read nome
echo
echo "Boas vindas $nome"
echo
echo "Digite a senha: "
read senha
echo
echo $((5 * 3))

i=$"1"
while [ $senha -ne 123 ];do
	echo "Digite a senha: "
	read senha
	echo
	
	i=$[ $i + 1 ]
	
	if [ $i -eq 5 ];then
		echo "Tentativas esgotadas"
		exit
	fi
	
	if [ $senha -eq 123 ];then
		echo
		echo "Login feito com sucesso"
		exit
	fi
done