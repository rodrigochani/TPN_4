################################ Maestría en Aplicaciones de Información Espacial ################################

################################ Introducción a las técnicas inteligentes de resolución de problemas de planificación, secuenciación y ejecución ################################

################################ Trabajo práctico Nº: 4 ################################

################################ Ejercicio 10 (desafío): Cree un programa en bash que lea la cantidad de bytes que recibe su placa de red (ver el archivo /sys/class/net/enpXsX/statistics), cada un segundo, y lo guarde en el archivo /tmp/datos. El archivo debe contenener, en cada fila, primero la hora, y separado por un espacio, el tráfico recibido. Luego, debe procesar ese archivo para graficar el tráfico de red. ################################

import matplotlib.pyplot as plt

# Abrir el archivo de datos en la carpeta contenedora
with open("network_stats.csv", "r") as fuente:
    x = []  # Lista para las marcas de tiempo (índices en este caso)
    y = []  # Lista para los bytes recibidos (KBytes)
    cont = 0  # Contador para el eje x
    
    next(fuente)  # Saltar el encabezado
    for linea in fuente:
        if linea.strip():  # Asegurar que la línea no esté vacía
            graf = linea.strip().split(',')  # Dividir la línea por comas
            if graf[0].strip('"') == "Wi-Fi 2":  # Filtrar solo las líneas de "Wi-Fi 2"
                bytes_recibidos = int(graf[1].strip('"')) / 1000  # Convertir de bytes a KBytes
                cont += 1  # Incrementar el contador para el eje x
                x.append(cont)
                y.append(bytes_recibidos)
    
    # Configurar y mostrar la gráfica
    plt.plot(x, y, "r")  # Dibujar la línea con los datos de bytes recibidos
    plt.xlabel('Mediciones (s)')
    plt.ylabel('Tráfico RX (KBytes)')
    plt.title('Monitor de Tráfico de Wi-Fi 2')
    plt.grid(True)
    plt.savefig("rx_traffic.png")
    plt.show()

# Modo de ejecución: se ejecuta solo desde el script desafio.sh. También se puede abrir en terminal Linux (Bash) con "python3 desafio.py" o con consola python, dentro de la carpeta contenedora del archivo. #