#!bin/bash

idade=''
cpf=''
cpf2=''

recebeDados() {
    echo
    echo "Cadastro: "
    echo "Preencha o formulario: "
    echo "idade: "
    read idade
    echo
    echo "Cpf: "
    read cpf
    echo
}


mostraCarrinho() {
    echo
    echo "Carrinho: "
    echo "Produto 1"
    echo "Produto 2"
    echo "Produto 3"
    echo
}

login() {
    echo
    echo "Digite seu cpf: "
    read cpf2

    if [ $cpf = $cpf2 ];then
            mostraCarrinho
        else
            recebeDados
    fi
}


echo "Bem vindo $1"
echo

recebeDados
login

while [ $cpf != $cpf2 ];do
    recebeDados

    if [ $cpf = $cpf2 ];then
        mostraCarrinho       
    fi
done