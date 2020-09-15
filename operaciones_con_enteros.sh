#!/bin/bash
#Practicando con los operadores

read -p "n1: " n1
read -p "n2: " n2
echo "A continuación, escoge la operación: "
echo "1. Suma"
echo "2. Resta"
echo "3. Multiplicación"
echo "4. División"
echo "5. Modulo"
echo "6. Exponente"
read op
case $op in
1)  #resp=`expr $n1 \+ $n2`
    #resp=$(($n1 + $n2))
    let resp=$n1+$n2
    echo "La suma es:" ;;
2)  resp=`expr $n1 \- $n2`
    #resp=$(($n1 - $n2))
    #let resp=$n1-$n2
    echo "La resta es:" ;;
3)  resp=`expr $n1 \* $n2`
    #resp=$(($n1 * $n2))
    #let resp=$n1*$n2
    echo "La multiplicación es:" ;;
4)  resp=`expr $n1 \/ $n2`
    #resp=$(($n1 / $n2))
    #let resp=$n1/$n2
    echo "La división es:" ;;
5)  resp=`expr $n1 \% $n2`
    #resp=$(($n1 % $n2))
    #let resp=$n1%$n2
    echo "El módulo es:" ;;
6)  #resp=$(( $n1 ** $n2))
    #let resp=$n1**$n2
    echo "La potencia es:" ;;
esac
echo "$resp"
