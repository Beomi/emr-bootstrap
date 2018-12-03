#!/bin/bash

# sudo yum groupinstall -y 'Development Tools'
sudo yum install -y python36 python36-pip python36-devel gcc72-c++

sudo mkdir ~/.pip
sudo echo "[global]
index-url=http://ftp.daumkakao.com/pypi/simple
trusted-host=ftp.daumkakao.com" > ~/.pip/pip.conf

sudo python36 -m pip install -U pip
sudo python36 -m pip install \
    scikit-learn pandas konlpy gensim
