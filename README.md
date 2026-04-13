# 🌿 Malanga · Recetario Digital

Recetario web para las cocinas y bares de Malanga. Acceso desde cualquier dispositivo sin instalar nada.

---

## 🚀 Instalación por primera vez

### Requisitos
- Tener [Git](https://git-scm.com/downloads) instalado
- Tener una cuenta en [GitHub](https://github.com)

### Pasos

**1. Descomprime el ZIP** en una carpeta de tu computador

**2. Abre la terminal** dentro de esa carpeta

**3. Ejecuta el script de configuración:**

```bash
# En Mac / Linux:
./setup_github.sh

# En Windows (Git Bash):
bash setup_github.sh
```

**4. Sigue las instrucciones** — el script te pedirá tu usuario de GitHub y el nombre del repo

**5. Activa GitHub Pages:**
- Ve a tu repo → **Settings → Pages**
- Branch: `main` → carpeta: `/ (root)`
- Clic en **Save**

**6. En ~2 minutos tu recetario estará en:**
```
https://TU-USUARIO.github.io/malanga-recetario
```

---

## 🔄 Actualizar la base de datos

Cada vez que quieras subir cambios (nuevas recetas, fotos, etc.):

```bash
./actualizar.sh
```

El script te pedirá una descripción de los cambios y los subirá automáticamente.

---

## 📁 Estructura del repositorio

```
malanga-recetario/
├── index.html            ← App principal (todo en uno)
├── recipes_data.json     ← Base de datos (417 recetas)
├── photos/               ← Fotos de los platos
├── setup_github.sh       ← Script de configuración inicial
├── actualizar.sh         ← Script para subir actualizaciones
└── README.md             ← Este archivo
```

---

## 📸 Agregar fotos desde la app

1. Abre el recetario en el navegador
2. Busca la receta y ábrela
3. Toca el área de la foto → **📷 Cambiar**
4. Selecciona la imagen desde tu dispositivo

> Las fotos se guardan localmente en el dispositivo. Para que sean permanentes y visibles en todos los dispositivos, súbelas a la carpeta `photos/` con el nombre del plato en minúsculas y guiones (ej: `pesca-malanga.jpg`) y ejecuta `./actualizar.sh`.

---

## ✨ Funcionalidades

- ✅ 417 recetas (300 carta + 117 sub recetas)
- ✅ Búsqueda por nombre o ingrediente
- ✅ Filtro por categoría
- ✅ Paso a paso de preparación
- ✅ Fotos con lupa y lightbox
- ✅ Notas de cocina editables
- ✅ Agregar nuevas recetas
- ✅ Funciona sin internet (offline)
- ✅ Compatible con celular, tablet y PC
