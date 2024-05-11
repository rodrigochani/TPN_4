################################ Maestría en Aplicaciones de Información Espacial ################################

################################ Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución ################################

################################ Trabajo práctico Nº: 4 ################################

################################ Ejercicio 10 (desafío): Cree un programa en bash que lea la cantidad de bytes que recibe su placa de red (ver el archivo /sys/class/net/enpXsX/statistics), cada un segundo, y lo guarde en el archivo /tmp/datos. El archivo debe contenener, en cada fila, primero la hora, y separado por un espacio, el tráfico recibido. Luego, debe procesar ese archivo para graficar el tráfico de red. ################################

# Pide al usuario que ingrese la duración del script en segundos
echo "Ingrese la duración del script en segundos:"
read duration

# Define la ruta absoluta de salida del archivo CSV en Windows, usando la ruta completa de Windows
csv_path='C:\\Users\\rodri\\Documents\\Gulich\\MAIE\\Cursos\\Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución\\Semana 2\\Clase 4\\Práctico\\TPN_4\\network_stats.csv'

# Hora de inicio (en segundos)
start_time=$(date +%s)

# Bucle que se ejecuta hasta que se alcanza la duración especificada
while true; do
    # Comando PowerShell que obtiene las estadísticas de la red y las exporta a un CSV
    # Usamos el parámetro '-Append' para añadir datos en lugar de sobrescribir
    powershell_command="Get-NetAdapterStatistics | Select-Object Name,ReceivedBytes,SentBytes | Export-Csv -Path '$csv_path' -NoTypeInformation -Append"

    # Ejecutar el comando PowerShell desde Bash
    /mnt/c/Windows/System32/WindowsPowerShell/v1.0/powershell.exe -Command "$powershell_command"

    # Mostrar mensaje de confirmación
    echo "Estadísticas de red actualizadas y añadidas a $csv_path"

    # Obtener la hora actual
    current_time=$(date +%s)

    # Calcular el tiempo transcurrido
    elapsed_time=$((current_time - start_time))

    # Verificar si se ha alcanzado la duración especificada
    if [ $elapsed_time -ge $duration ]; then
        echo "El script ha completado su ejecución por el tiempo especificado de $duration segundos."
        break
    fi

    # Esperar un segundo antes de la próxima ejecución
    sleep 1
done

# Ejecuta el script de python para graficar los resultados
python3 desafio.py

# Modo de ejecución: abrir en terminal Linux (Bash) con "./desafio.sh", dentro de la carpeta contenedora del archivo. #