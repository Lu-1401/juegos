FROM python:3.10-slim

# Variables de entorno para que Pygame no falle en headless (sin display)
ENV SDL_AUDIODRIVER=dummy
ENV SDL_VIDEODRIVER=dummy

# Instala librerías del sistema necesarias
RUN apt-get update && apt-get install -y --no-install-recommends \
    libglib2.0-0 \
    libglib2.0-bin \
    libglib2.0-dev \
    libasound2-dev \
    libpulse-dev \
    libx11-6 \
    libx11-dev \
    libxext6 \
    libxext-dev \
    libxrandr-dev \
    libxcursor-dev \
    libxi-dev \
    libxinerama-dev \
    libxxf86vm-dev \
    libxxf86dga-dev \
    libsm6 \
    libice6 \
    libgtk-3-0 \
    && rm -rf /var/lib/apt/lists/*

# Establece el directorio de trabajo
WORKDIR /app

# Copia el proyecto
COPY . .

# Instala Pygame y otras dependencias de Python
RUN pip install --upgrade pip && pip install pygame

# Ejecuta el menú interactivo o tu juego directamente
CMD ["python3", "main.py"]
