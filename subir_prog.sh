#!/bin/bash
#Script para AVR
echo -e "Ingrese nombre del archivo a subir: "
read nombre

printf "Subiendo a la placa...\n"
avrdude -vvvv -p atmega328p -F -c usbasp -U flash:w:$nombre.hex:i
printf "Programa cargado! \n"
