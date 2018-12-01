# curl -s https://raw.githubusercontent.com/Beomi/emr-bootstrap/master/install_conda_reqs.sh | sudo docker exec jupyterhub bash

#!/bin/bash

sudo easy_install-3.4 pip
sudo /usr/local/bin/pip3 install paramiko nltk scipy scikit-learn pandas
