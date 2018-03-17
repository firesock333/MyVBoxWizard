#!/bin/bash
while [ 1 ]; do
dialog --inputbox "Nombre de la maquina" 8 40 2>nombre
varnombre=$(cat nombre)
VBoxManage list vms | grep ${varnombre}
if [ $? -eq 1 ]; then
break
fi
done
