#!/bin/bash
#Este es el script principal del wizard
#
#Colectar los datos de la maquina virtual
./nCore.sh
NUMCORE=$( cat salida )
echo $NUMCORE
