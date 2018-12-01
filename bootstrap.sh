# curl -s https://raw.githubusercontent.com/Beomi/emr-bootstrap/master/install_conda_reqs.sh | sudo docker exec jupyterhub bash

#!/bin/bash

sudo yum groupinstall -y 'Development Tools'
sudo yum install -y git python36 python36-devel python36-pip

sudo python36 -m pip install -U pip

sudo python36 -m pip install \
    paramiko nltk scipy scikit-learn pandas torch==0.4.1 tqdm cmake

export PATH=$PATH:/usr/local/bin

git clone https://github.com/kakao/khaiii
cd khaiii
sudo python36 -m pip install -r requirements.txt
mkdir build
cd build
/usr/local/bin/cmake ..
make all
make resource
make install
make package_python
cd package_python
sudo /usr/local/bin/pip3 install .
