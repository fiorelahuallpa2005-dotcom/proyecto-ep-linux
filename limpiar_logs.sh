
#!/bin/bash

# Script de mantenimiento y limpieza segura

echo "================================"
echo "   MANTENIMIENTO DEL SISTEMA"
echo "================================"

DIRECTORIO="./temporales"

if [ ! -d "$DIRECTORIO" ]; then
    echo "No existe el directorio de archivos temporales."
    exit 1
fi

echo "Archivos temporales encontrados:"
find "$DIRECTORIO" -maxdepth 1 -type f -name "*.tmp" -print

read -r -p "¿Desea eliminar estos archivos? (s/n): " respuesta

if [[ "$respuesta" == "s" || "$respuesta" == "S" ]]; then
    find "$DIRECTORIO" -maxdepth 1 -type f -name "*.tmp" -delete
    echo "Limpieza completada."
else
    echo "Operación cancelada."
fi

