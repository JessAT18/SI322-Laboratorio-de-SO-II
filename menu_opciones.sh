#!/bin/bash
echo "------------------------------"
echo "------Gestionar usuario-------"
echo "------------------------------"
echo "1. Crear o modificar usuario con identificador y nombre completo"
echo "2. Crear o modificar usuario con fecha de expiracion"
echo "3. Eliminar usuario con todos sus archivos"
echo "4. Salir"
echo "------------------------------"
read -p "Elija una opción: " op

case $op in
1)  
    #cat /etc/passwd | awk -F ':' '{ print $1 }'
    echo "1. Crear"
    echo "2. Modificar"
    read -p "Elija una opcion: " op1
    case $op1 in
        1)  read -p "Ingrese el nombre del nuevo usuario" nombre
            read -p "Nombre completo" nombre_completo
            read -p "Numero de identificacion" n_ident
            useradd ;;
        2);;
    esac

    id_nombre ;;
3)  read -p "Ingrese el nombre de usuario" n_usuario
    userdel -r n_usuario
    ;;
esac

