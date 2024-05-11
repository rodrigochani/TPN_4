# Guía de Ejercicios de Bash Scripting

Este repositorio contiene soluciones a una serie de ejercicios diseñados para mejorar la habilidad en el uso de scripts de Bash y control de versiones con Git. Cada script realiza una tarea específica descrita en la guía de ejercicios.

## Estructura del Repositorio

Cada script está nombrado según el número del ejercicio (eje1, eje2, etc.). Aquí está una breve descripción de cada script:

### Ejercicios

- **eje1.sh**: Imprime "Hola mundo!" en la terminal.
- **eje2.sh**: Imprime el nombre de usuario actual utilizando la variable de entorno `$USER`.
- **eje3.sh**: Script que acepta el nombre y la edad como argumentos y los imprime en pantalla.
- **eje4.sh**: Suma dos números ingresados como variables de entrada.
- **eje5.sh**: Permite al usuario elegir un número entre 1 y 10 y lo compara con un número aleatorio generado por el script.
- **eje6.sh**: Calcula la asignación basada en el sueldo y rango del empleado según una tabla predefinida.
- **eje8.sh**: Imprime diez líneas en la terminal, cada una con un mensaje numerado secuencialmente hasta el 10.
- **eje9.sh**: Muestra el modelo del procesador de la máquina.
- **eje10.sh**: Muestra la cantidad de RAM de la máquina.
- **desafio.sh**: Monitorea y registra la cantidad de bytes recibidos por la placa de red cada segundo en un archivo csv dentro del directorio contenedor, y luego procesa este archivo para graficar el tráfico de red.
- **desafio.py**: Crea un gráfico a partir del archivo generado en "desafio.sh", desde donde se ejecuta automáticamente.

## Uso

Para ejecutar cualquiera de los scripts, navega al directorio del script y ejecuta:

bash <script_name>.sh

Desde WSL, navega a través de la carpeta /mnt/c/ al directorio del script, alojada en el root y ejecuta:

bash <script_name>.sh o simplemente ./<script_name>.sh

## Contribuciones
Las contribuciones a este proyecto son bienvenidas. Por favor, crea un fork del repositorio y realiza tus cambios. Puedes abrir un pull request para que tus cambios sean revisados e incorporados en el proyecto principal.




