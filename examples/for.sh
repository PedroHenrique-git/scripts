#!/bin/bash

for((loop=0;loop<10;loop++));do
	echo "$loop"
done

echo
echo
echo "Valor no while: "
i=$"0"
while [ $i -lt 10 ];do
	echo $i
	i=$[ $i + 1];
done

echo
echo
echo "Valor no until: "
v=$"0"
until [ $v -gt 5 ];do
	echo $v
	v=$[ $v + 1]
done