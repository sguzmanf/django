
set -o errexit  # Salir si ocurre algún error

# Instalar las dependencias
pip install -r requirements.txt

# Colectar archivos estáticos
python manage.py collectstatic --no-input

# Ejecutar las migraciones
python manage.py migrate

# Iniciar la aplicación con el puerto proporcionado por Render
PORT=${PORT:-8000}  # Usa el puerto proporcionado por Render, o 8000 por defecto
gunicorn demodjango.wsgi --bind 0.0.0.0:$PORT