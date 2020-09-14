#!/bin/bash
read -p "Ingrese nombre de grupo a buscar: " nombre
encontrado=0
grep $nombre /etc/group > aux
while read grupo; do
	bloque=1
	aux=""
	sw=0
	for(( i=0;i<${#grupo}; i++))
	do
		letra=${grupo:$i:1}
		if [ "$letra" = ":" ]; then
			if [ $bloque -eq 1 ] && [ $aux = $nombre ]; then
				echo "Nombre grupo: " $aux
				sw=1
			fi
			if [ $bloque -eq 3 ] && [ $sw -eq 1 ]; then
				echo "Id grupo: " $aux
				echo -n "Lista de usuarios: "
			fi
			aux=""
			bloque=$(( $bloque + 1 ))
		else
			if [ $bloque -eq 4 ] && [ $sw -eq 1 ]; then
				if [ "$letra" = "," ]; then
					echo -n " "
				else
					echo -n $letra
				fi
			fi
			aux="$aux$letra"
		fi
	done
	if [ $sw -eq 1 ]; then
		encontrado=1
	fi
done < aux
echo " "
if [ $encontrado -eq 0 ]; then
	echo "Grupo no encontrado!"
fi

