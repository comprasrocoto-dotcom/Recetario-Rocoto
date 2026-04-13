#!/bin/bash

# ══════════════════════════════════════════════════════════════
#  MALANGA RECETARIO — Setup GitHub
#  Ejecuta este script una sola vez para crear el repositorio
# ══════════════════════════════════════════════════════════════

echo ""
echo "🌿 MALANGA RECETARIO — Configuración GitHub"
echo "═══════════════════════════════════════════"
echo ""

# Pedir datos
read -p "👤 Tu usuario de GitHub: " GITHUB_USER
read -p "📦 Nombre del repositorio (ej: malanga-recetario): " REPO_NAME
REPO_NAME=${REPO_NAME:-malanga-recetario}

echo ""
echo "Se creará: https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""

# Inicializar git
git init
git add .
git commit -m "🌿 Malanga Recetario — versión inicial (417 recetas)"

# Crear rama main
git branch -M main

# Agregar remote
git remote add origin https://github.com/$GITHUB_USER/$REPO_NAME.git

echo ""
echo "─────────────────────────────────────────────────────────"
echo "⚠️  ANTES DE CONTINUAR:"
echo ""
echo "1. Ve a https://github.com/new"
echo "2. Nombre del repo: $REPO_NAME"
echo "3. Visibilidad: Público"
echo "4. NO inicialices con README (dejarlo vacío)"
echo "5. Clic en 'Create repository'"
echo "─────────────────────────────────────────────────────────"
echo ""
read -p "✅ ¿Ya creaste el repo en GitHub? (s/n): " CONFIRM

if [ "$CONFIRM" != "s" ] && [ "$CONFIRM" != "S" ]; then
  echo "❌ Cancelado. Ejecuta el script de nuevo cuando hayas creado el repo."
  exit 1
fi

# Subir
echo ""
echo "📤 Subiendo archivos..."
git push -u origin main

echo ""
echo "═══════════════════════════════════════════════════════════"
echo "✅ ¡Listo! Tu recetario está en GitHub."
echo ""
echo "🔗 Repositorio: https://github.com/$GITHUB_USER/$REPO_NAME"
echo ""
echo "🌐 Para activar GitHub Pages:"
echo "   1. Ve a Settings → Pages"
echo "   2. Branch: main → / (root)"
echo "   3. Save"
echo ""
echo "   URL del recetario: https://$GITHUB_USER.github.io/$REPO_NAME"
echo "═══════════════════════════════════════════════════════════"
echo ""
