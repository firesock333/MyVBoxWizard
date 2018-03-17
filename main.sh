#!/bin/bash
# Este script es mi wizard
#
# Colectar los datos de la maquina virtual
./newVMname.sh
VMNAME=$(cat salida)
./nCore.sh 
NUMCORES=$(cat salida)
./selectOS.sh
OSTYPE=$(cat salida)
./selectDisk.sh
HDSIZE=$(cat salida)
./selectMemory.sh
MEMSIZE=$(cat salida)
# Lineas que ejecutaran los comandos de VBoxManage para crear la maquina virtual
VBoxManage createvm --name ${VMNAME} --ostype ${OSTYPE} --register
VBoxManage modifyvm ${VMNAME} --memory ${MEMSIZE}
VBoxManage modifyvm ${VMNAME} --cpus ${NUMCORES}
VBoxManage createhd --filename ${HOME}/VirtualBox\ VMs/${VMNAME}/${VMNAME}.vdi --size ${HDSIZE} --format VDI
VBoxManage storagectl ${VMNAME} --name "SATA Controller" --add sata --controller IntelAhci
VBoxManage storageattach ${VMNAME} --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium ${HOME}/VirtualBox\ VMs/${VMNAME}/${VMNAME}.vdi
rm -f salida
