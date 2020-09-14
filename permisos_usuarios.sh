#!/bin/bash

echo "---GESTIÓN DE PERMISOS---"
echo "Primero, escriba el nombre del archivo"
read nombre
echo ""
ls -l $nombre
echo ""
echo "A continuación, ingrese los permisos para asignar al usuario"
echo "1. Solo lectura"
echo "2. Solo escritura"
echo "3. Solo ejecución"
echo "4. Lectura y escritura"
echo "5. Lectura y ejecución"
echo "6. Escritura y ejecución"
echo "7. Lectura, escritura y ejecucion"
echo "8. Quitar todos los permisos"
read n
f=""
if [[ $n -gt 0 && $n -lt 9 ]]; then
    case $n in
    1) f="+r" ;;
    2) f="+w" ;;
    3) f="+x" ;;
    4) f="+r+w" ;;
    5) f="+r+x" ;;
    6) f="+w+x" ;;
    7) f="+r+w+x" ;;
    8) f="-r-w-x" ;;
    esac
    chmod u+$f $nombre
    ls -l $nombre
else
    echo "No se puede"
fi
