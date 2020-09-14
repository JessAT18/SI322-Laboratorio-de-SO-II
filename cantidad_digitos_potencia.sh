#!/bin/bash

function potencia(){
    local p
    p=1
    for (( i=1; i<=$n; i++ ))
    do
    	p=`expr $p \* 10`
    done
    q=$(($p/10))
    p=$(($p-1))
    echo "Maximo $p Minimo $q"
    return $p
}

echo "Ingrese la cantidad de digitos"
read n
potencia $n
