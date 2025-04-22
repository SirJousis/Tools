# Tools
Recopilation of my tools for different utilities.
## COMANDOS GITHUB
🆕 Iniciar un repositorio
- git init
Crea un nuevo repositorio Git local en el directorio actual.

🛒 Clonar un repositorio existente
- git clone https://github.com/usuario/repositorio.git

Descarga el repositorio completo a tu máquina.

💾 Añadir y confirmar cambios
- git status
Ver los archivos modificados o no añadidos.
- git add archivo.txt# o todo de golpe:git add .
Añade los cambios al "staging area".
- git commit -m "Descripción de los cambios" 
Crea un snapshot de los cambios.

🚀 Subir al repositorio remoto
- git push origin main
Sube tus commits al branch main del repositorio en GitHub.

🔄 Descargar cambios del remoto
- git pull origin main
Baja los últimos cambios de GitHub y los fusiona con tu rama local.

🌿 Ramas
- git branch nombre-rama
- git checkout nombre-rama# o combinado:git checkout -b nueva-rama
Crear y cambiar a una nueva rama.
- git merge nombre-rama
Fusionar nombre-rama con la rama actual.

🔧 Configuración básica (una sola vez)
- git config --global user.name "Tu Nombre"git config --global user.email "tuemail@example.com" 

🔑 Autenticación con GitHub (si usas HTTPS)
Usa GitHub CLI o configura el SSH key:
- ssh-keygen -t ed25519 -C "tuemail@example.com" eval "$(ssh-agent -s)"
- ssh-add ~/.ssh/id_ed25519
Luego subes la clave pública (~/.ssh/id_ed25519.pub) a tu cuenta de GitHub.

📦 Ignorar archivos
Crea un archivo .gitignore para excluir archivos o carpetas:
.gitignore*.log*.pyc
node_modules/
.env
