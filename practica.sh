#!/bin/sh
#Ejemplo de variables

n=5
nombre="Jessica"
booleano=true

echo "El valor es: $n"
echo "El nombre es: $nombre"
echo "El valor booleano es: $booleano"

echo "Ingresar un número"
read x
echo "Ingrese otro número"
read y
#s=$(($x + $y))
s=`expr $x \+ $y`
r=$(($x - $y))
m=$(($x * $y))
d=$(($x / $y))
mo=$(($x % $y))
ex=$(($x ** $y))
#varmas=$(($x++))
#varmenos=$(($y--))
echo "Suma: $s"
echo "Resta: $r"
echo "Multiplicacion: $m"
echo "Division: $d"
echo "Modulo: $mo"
echo "x^y: $ex"
if [ "$x" -gt "$y" ]; then
	echo "$x es mayor que $y"
else
	echo "$x es menor que $y"
fi
