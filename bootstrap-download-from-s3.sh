#!/bin/bash

sudo yum groupinstall -y 'Development Tools'
sudo yum install -y git python36 python36-pip python36-devel

sudo python36 -m pip install -U pip

sudo python36 -m pip install \
    paramiko nltk scipy scikit-learn pandas torch==0.4.1 tqdm cmake

sudo cp -r /usr/local/bin/* /usr/bin

export PATH=$PATH:/usr/local/bin
alias cmake=/usr/local/bin/cmake

sudo wget https://s3.ap-northeast-2.amazonaws.com/simplelink-public-seoul/khaiii.tar.gz
sudo tar -zxvf khaiii.tar.gz

cd khaiii/package_python
sudo /usr/local/bin/pip3 install .