################################ Maestría en Aplicaciones de Información Espacial ################################

################################ Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución ################################

################################ Trabajo práctico Nº: 4 ################################

################################ Ejercicio 9: Imprima la RAM de su máquina. ################################

# Imprime la cantidad total de RAM en el sistema

free -h | grep "Mem:" | awk '{print $2}'

# Modo de ejecución: abrir en terminal Linux (Bash) con "./eje9.sh", dentro de la carpeta contenedora del archivo. #