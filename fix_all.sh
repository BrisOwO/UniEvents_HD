#!/bin/bash
echo "🔧 Corrigiendo todas las rutas..."

# Corregir rutas de CSS en todos los archivos PHP
find ./Src -name "*.php" -type f -exec sed -i 's|href="[^"]*style\.css"|href="/public/styles/style.css"|g' {} +

# Corregir rutas de conexión según la profundidad del archivo
# Para archivos en Src/Login/
find ./Src/Login -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../ConexionPHP/conexion.php";|g' {} +

# Para archivos en Src/ModuloAdmin/MenuAdmin/
find ./Src/ModuloAdmin/MenuAdmin -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../../ConexionPHP/conexion.php";|g' {} +

# Para archivos en Src/ModuloAdmin/BotonesAdmin/
find ./Src/ModuloAdmin/BotonesAdmin -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../../ConexionPHP/conexion.php";|g' {} +

# Para archivos en Src/ModuloAdmin/ModuloSupervisor/MenuSupervisor/
find ./Src/ModuloAdmin/ModuloSupervisor/MenuSupervisor -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../../../ConexionPHP/conexion.php";|g' {} +

# Para archivos en Src/ModuloAdmin/ModuloSupervisor/FuncionesAdmin/
find ./Src/ModuloAdmin/ModuloSupervisor/FuncionesAdmin -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../../../ConexionPHP/conexion.php";|g' {} +

# Para archivos en Src/ModuloSolicitante/MenuSolicitante/
find ./Src/ModuloSolicitante/MenuSolicitante -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../../ConexionPHP/conexion.php";|g' {} +

# Para archivos en Src/ModuloSolicitante/BotonesSolicitante/
find ./Src/ModuloSolicitante/BotonesSolicitante -name "*.php" -type f -exec sed -i 's|require_once.*conexion\.php.*|require_once "../../ConexionPHP/conexion.php";|g' {} +

echo "✅ Todas las rutas corregidas!"
echo "🔍 Verificando cambios..."

# Mostrar algunos ejemplos
echo ""
echo "Ejemplos de archivos corregidos:"
grep -r "href=\"/public/styles/style.css\"" ./Src/Login/*.php | head -3
echo ""
echo "✅ Listo! Ahora prueba tu aplicación."
