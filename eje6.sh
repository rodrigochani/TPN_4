################################ Maestría en Aplicaciones de Información Espacial ################################

################################ Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución ################################

################################ Trabajo práctico Nº: 4 ################################

################################ Ejercicio 6: Haga un programa con case, donde tome dos valores de entrada: sueldo y rango. Con ello, calcule la asignación que percibirá el empleado, considerando la siguiente tabla dada. ################################


# Pedir al usuario que ingrese el sueldo
echo "Por favor, introduce el sueldo del empleado como un entero:"
read sueldo

# Verificar que el sueldo no sea cero antes de proceder
if [ "$sueldo" == "0" ]; then
    echo "El sueldo no puede ser 0. Vuelva a intentarlo."
    exit 1
fi

# Pedir al usuario que ingrese el rango
echo "Introduce el rango (1, 2, o 3):"
read rango

# Verificar que el rango no sea distinto a 1, 2 o 3
if [ "$rango" != "1" ] && [ "$rango" != "2" ] && [ "$rango" != "3" ]; then
    echo "El rango no puede ser distinto a 1, 2 o 3. Vuelva a intentarlo."
    exit 1
fi

# Calcular la asignación basándose en el rango
case $rango in
    1)
        asignacion=$((sueldo * 83 / 100)) 
        ;;
    2)
        asignacion=$((sueldo * 120 / 100)) 
        ;;
    3)
        asignacion=$((sueldo * 5))
        ;;
esac

# Imprimir la asignación
echo "La asignación para el empleado con sueldo de $sueldo y rango $rango es de $asignacion."

# Modo de ejecución: abrir en terminal Linux (Bash) con "./eje6.sh", dentro de la carpeta contenedora del archivo. #