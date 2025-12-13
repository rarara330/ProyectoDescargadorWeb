#!/bin/bash
echo "--- [2/3] Desplegando Archivos Web ---"

# Definir rutas
ORIGEN="./codigo_fuente"
DESTINO="/var/www/html/pepe"

# Verificar si la carpeta origen existe
if [ ! -d "$ORIGEN" ]; then
    echo "❌ Error: No encuentro la carpeta 'codigo_fuente'. Asegúrate de estar en la raíz del proyecto."
    exit 1
fi

# Crear directorio destino si no existe
if [ ! -d "$DESTINO" ]; then
    sudo mkdir -p "$DESTINO"
fi

# Copiar archivos
echo "Copiando archivos a $DESTINO..."
sudo cp -r $ORIGEN/* "$DESTINO/"

# Ajustar permisos (importante para que Apache pueda leerlos)
sudo chown -R www-data:www-data "$DESTINO"
sudo chmod -R 755 "$DESTINO"

echo "✅ Sitio web desplegado en $DESTINO."
