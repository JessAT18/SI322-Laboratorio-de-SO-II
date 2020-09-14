#!/bin/bash

echo "Ingrese la cantidad de digitos"
read n
may=""
men="1"
i=1
while [ $i -le $n ]
do
    if [ $i -lt $n ]; then
        men+=$(("0"))
    fi
    may+=$(("9"))
    i=$(($i+1))
done

echo "Menor: $men       Mayor: $may"
