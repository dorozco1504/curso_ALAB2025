#!/bin/bash

# install.sh

wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p "$HOME/miniconda"

# activar conda
source "$HOME/miniconda/bin/activate"

# (opcional) aceptar TOS aquí si quieres
 conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/main
 conda tos accept --override-channels --channel https://repo.anaconda.com/pkgs/r

# instalar mamba en base
conda install -n base -c conda-forge mamba -y

# crear el environment con mamba
mamba env create -f environment.yml

# activar el env popgen usando conda
source "$HOME/miniconda/bin/activate" popgen