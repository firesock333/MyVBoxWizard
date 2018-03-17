#!/bin/bash
# Script para seleccionar la cantidad de disco duro
#
dialog --backtitle "Tamano Disco" --radiolist "Tamanos" 0 0 0 1 512 on 2 1024 off 3 2048 off 4 4086 off 5 8192 off 2>salida
HDSIZE=$(cat salida)
case ${HDSIZE} in
1)
  HDSIZE=512 
  ;;
2)
  HDSIZE=1024
  ;;
3)
  HDSIZE=2048 
  ;;
4)
  HDSIZE=4096 
  ;;
5)
  HDSIZE=8192 
;;
esac
echo ${HDSIZE} > salida
