#!/bin/bash

echo "Digite um numero"
echo 

read numero

echo
echo "Digite o numero de rodadas "
echo

read rodadas

echo

m=10

for((loop=0;loop<$rodadas;loop++));do
    res=$((numero * m))
    echo "$numero multiplicado por $m = $res"
    m=$(($m + 10))
done