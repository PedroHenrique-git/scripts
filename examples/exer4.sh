#!/bin/bash

echo "" > $HOME/comando.txt

for((i=2;i>1;i++)); do
    echo "valor do incremento: $i"
    sleep 10

    COMANDO=$(cat $HOME/comando.txt)

    if [ -n $COMANDO ]; then
        $COMANDO&
        echo "executei o comando $COMANDO";
        COMANDO=$""
    fi
done