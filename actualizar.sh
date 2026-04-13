#!/bin/bash

# ══════════════════════════════════════════════════════════════
#  MALANGA RECETARIO — Actualizar base de datos
#  Ejecuta este script cada vez que actualices las recetas
# ══════════════════════════════════════════════════════════════

echo ""
echo "🌿 MALANGA RECETARIO — Actualización"
echo "════════════════════════════════════"
echo ""

# Mensaje del commit
read -p "📝 Describe la actualización (ej: nuevas recetas brunch): " MSG
MSG=${MSG:-"Actualización de recetas"}

# Agregar cambios y subir
git add .
git commit -m "🔄 $MSG"
git push

echo ""
echo "✅ ¡Base de datos actualizada en GitHub!"
echo ""
REPO_URL=$(git remote get-url origin | sed 's/\.git$//')
echo "🔗 $REPO_URL"
echo ""
