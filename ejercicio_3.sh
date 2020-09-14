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

function crear_id_nombre(){
    
    return 0
}

function modificar_id_nombre(){
    return 0
}

function fecha_expiracion(){
    return 0
}

function eliminar_todo(){
    return 0
}

case $op in
1)  
    #cat /etc/passwd | awk -F ':' '{ print $1 }'
    echo "Ingrese la opción que va a realizar: "
    echo "1. Crear"
    echo "2. Modificar"
    read op2
    if [ $op2 -eq 1 ]; then
        
    fi
    id_nombre ;;
3)  read -p "Ingrese el nombre de usuario: " n_usuario
    userdel -r $n_usuario
    
    ;;
esac
