################################ Maestría en Aplicaciones de Información Espacial ################################

################################ Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución ################################

################################ Trabajo práctico Nº: 4 ################################

################################ Ejercicio 7: Use un for para imprimir 10 líneas que digan: “este el es mensaje x”, hasta el 10. ################################

# Pedir al usuario que ingrese un número
echo "Por favor, introduce un número entero (entre 1 y 100):"
read numero

# Verificar que el número esté entre 1 y 100 antes de proceder
if [ "$numero" -lt 1 ] || [ "$numero" -gt 100 ]; then
    echo "El número ingresado no se encuentra en el rango del 1 al 100. Vuelva a intentarlo."
    exit 1
fi

# Bucle para imprimir mensajes desde 1 hasta el número ingresado
for i in $(seq 1 $numero)
do
    echo "Este es el mensaje $i"
done

# Modo de ejecución: abrir en terminal Linux (Bash) con "./eje7.sh", dentro de la carpeta contenedora del archivo. #