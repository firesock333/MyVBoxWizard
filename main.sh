#!/bin/bash
# Este script es mi wizard
#
# Colectar los datos de la maquina virtual
./newVMname.sh
VMNAME=$(cat salida)
./nCore.sh 
NUMCORES=$(cat salida)
# Lineas que ejecutaran los comandos de VBoxManage para crear la maquina virtual

echo "Nombre de maquina ${VMNAME} y num cores ${NUMCORES}"
