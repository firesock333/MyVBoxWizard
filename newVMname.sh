#!/bin/bash
#Este es el script que verifica si la máquina virtual ya existe.
#En caso de que exista, seguira preguntando.
while [ 1 ]; do
dialog --inputbox "Digite el nombre de la maquina" 8 40 2>salida
VNAME=$(cat salida)
VBoxManage list vms | grep -i ${VNAME}
if [ $? -eq 1 ]; then
break
fi
done
