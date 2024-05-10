################################ Maestría en Aplicaciones de Información Espacial ################################

################################ Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución ################################

################################ Trabajo práctico Nº: 4 ################################

################################ Ejercicio 5: Realice un programa que permita elegir un número natural entre el 1 y el 10, y lo compare con un número aleatorio. Imprima el resultado por pantalla. ################################

# Función para generar un número aleatorio entre 1 y 10
function generar_aleatorio {
    echo $(( (RANDOM % 10) + 1 ))
}

# Pedir al usuario que elija un número entre 1 y 10
echo "Elige un número entre 1 y 10:"
read numero_usuario

# Verificar que el número ingresado esté dentro del rango permitido
if [[ $numero_usuario -lt 1 || $numero_usuario -gt 10 ]]; then
    echo "Número fuera de rango. Por favor, ejecuta el script de nuevo y elige un número válido."
    exit 1
fi

# Generar el número aleatorio
numero_aleatorio=$(generar_aleatorio)

# Comparar el número del usuario con el número aleatorio
echo "Tu número elegido: $numero_usuario"
echo "Número aleatorio generado: $numero_aleatorio"

if [ $numero_usuario -eq $numero_aleatorio ]; then
    echo "¡Felicidades! Acertaste el número."
else
    echo "No acertaste. Inténtalo de nuevo."
fi

# Modo de ejecución: abrir en terminal Linux (Bash) con "./eje5.sh", dentro de la carpeta contenedora del archivo. #