#!/bin/bash

# Asegurarse de que el script se ejecuta como root/sudo
if [ "$EUID" -ne 0 ]; then
  echo "❌ Por favor, ejecuta este instalador como root (sudo ./instalar_todo.sh)"
  exit
fi

echo "=========================================="
echo " INICIANDO INSTALACIÓN DEL PROYECTO PEPE"
echo "=========================================="

# Dar permisos de ejecución a los scripts por si acaso se perdieron al subir a git
chmod +x scripts/*.sh

# Ejecutar en orden
./scripts/01_dependencias.sh
./scripts/02_instalacion.sh
./scripts/03_integrar_nube.sh

echo "=========================================="
echo " INSTALACIÓN COMPLETADA"
echo "=========================================="
echo "Pasos finales manuales:"
echo "1. Ejecuta: mega-login TU_EMAIL TU_CONTRASEÑA"
echo "2. Prueba el backup ejecutando: /usr/local/bin/subir_pepe_mega.sh"
