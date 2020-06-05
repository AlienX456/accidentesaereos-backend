#!/bin/bash

# Install libaries
source /home/ubuntu/.bashrc
cd /home/ubuntu/despliegue
#source home/ubuntu/miniconda3/etc/profile.d/conda.sh
conda env remove -name djangopa
conda create --name djangopa python=3.6
conda activate djangopa
pip install -r requirements.txt
sudo a2ensite accidentesaereros-backend.conf
sudo /etc/init.d/apache2 restart

echo "Ready for after_install"