#!/bin/bash
echo "--- [1/3] Instalando Dependencias (Apache + PHP) ---"

# Actualizar repositorios
sudo apt-get update

# Instalar Apache y PHP (y la librería que conecta ambos)
# -y confirma automáticamente las preguntas de "sí/no"
sudo apt-get install -y apache2 php libapache2-mod-php

# Habilitar Apache para que arranque al inicio
sudo systemctl enable apache2
sudo systemctl start apache2

echo "✅ Dependencias instaladas."
