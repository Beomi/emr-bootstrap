#!/bin/bash
# Install Python 3 kernel
conda create -n py36 python=3.6 anaconda
source  /opt/conda/envs/py36/bin/activate
apt-get update
apt-get install -y gcc
/opt/conda/envs/py36/bin/python -m pip install --upgrade ipykernel
/opt/conda/envs/py36/bin/python -m ipykernel install

# Install libraries for Python3
/opt/conda/envs/py36/bin/pip install \
    paramiko nltk scipy numpy scikit-learn pandas torch==0.4.1 tqdm