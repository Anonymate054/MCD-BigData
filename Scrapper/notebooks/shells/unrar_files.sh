#!/bin/bash

# Instalar rar y unrar si no están instalados
sudo apt update && sudo apt upgrade -y
sudo apt install -y rar unrar

# Obtener el directorio base desde el argumento de la línea de comandos
base_dir="$1"

# Verificar si se proporciona un directorio base
if [ -z "$base_dir" ]; then
  echo "Uso: $0 <directorio>"
  exit 1
fi

# Verificar si el directorio base existe
if [ ! -d "$base_dir" ]; then
  echo "El directorio base '$base_dir' no existe."
  exit 1
fi

# Listar todos los directorios en el directorio base
for dir in "$base_dir"/*; do
  if [ -d "$dir" ]; then
    # Extraer el nombre del directorio
    dir_name=$(basename "$dir")
    
    # Definir la ruta del archivo .rar
    rar_file="$dir/$dir_name.rar"
    
    # Definir el directorio de salida csv
    csv_dir="$dir/csv"
    
    # Crear el directorio csv si no existe
    mkdir -p "$csv_dir"
    
    # Extraer el archivo .rar en el directorio csv
    unrar e "$rar_file" "$csv_dir"
  fi
done
