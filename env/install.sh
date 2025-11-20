#!/bin/bash

# install.sh

# ===== Descargar e instalar Miniconda =====
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p $HOME/miniconda

# Activar conda
source $HOME/miniconda/bin/activate

# ===== Aceptar Terms of Service de Anaconda =====
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# ===== Instalar mamba desde conda-forge =====
conda install -n base -c conda-forge mamba -y

# (Opcional pero recomendado) dar prioridad estricta a conda-forge
conda config --set channel_priority strict

# ===== Crear el environment =====
mamba env create -f environment.yml

# Activar el environment
mamba activate popgen