#!/bin/bash

# sudo yum groupinstall -y 'Development Tools'
# sudo yum install -y python36 python36-pip python36-devel gcc72-c++

# sudo mkdir ~/.pip
# sudo echo "[global]
# index-url=http://ftp.daumkakao.com/pypi/simple
# trusted-host=ftp.daumkakao.com" > ~/.pip/pip.conf

# sudo python36 -m pip install -U pip
# sudo python36 -m pip install \
#     scikit-learn pandas konlpy gensim

# Install Deps
sudo -i 

sudo yum install -y \
    wget tar bzip2 gcc72-c++ git python3-dev \
    java-1.8.0-openjdk-devel.x86_64 \
    python27-devel

# Install Anaconda3
cd /root && \
    sudo wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh

sudo chmod +x /root/Anaconda3-2018.12-Linux-x86_64.sh
sudo /root/Anaconda3-2018.12-Linux-x86_64.sh -b

# Install KoNLPy
sudo curl -L https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh | bash
sudo /root/anaconda3/bin/python -m pip install konlpy
# Install Mecab
cd /tmp/mecab-python-0.996 && \
    sudo /root/anaconda3/bin/python /tmp/mecab-python-0.996/setup.py build
cd /tmp/mecab-python-0.996 && \
    sudo /root/anaconda3/bin/python /tmp/mecab-python-0.996/setup.py install

sudo echo "/usr/local/lib" > /etc/ld.so.conf
sudo ldconfig && sudo ldconfig -p | grep libmecab

# Install Other Packages
sudo /root/anaconda3/bin/conda install -y gensim
