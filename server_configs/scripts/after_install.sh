#!/bin/bash

# Install libaries

cd /home/ubuntu/despliegue
source ~/miniconda3/etc/profile.d/conda.sh
conda create --name --force djangopa python=3.6
conda activate djangopa
pip install -r requirements.txt
sudo a2ensite accidentesaereros-backend.conf
sudo /etc/init.d/apache2 restart

echo "Ready for after_install"