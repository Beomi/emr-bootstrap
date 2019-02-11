sudo -i

cd /tmp

sudo wget https://raw.githubusercontent.com/beomi/emr-bootstrap/job-jupyter-deps-installer.sh

# apt-get update
# apt-get install -y gcc
# /opt/conda/envs/py27/bin/python -m pip install --upgrade ipykernel
# /opt/conda/envs/py27/bin/python -m ipykernel install

# # Install libraries for Python2
# /opt/conda/envs/py27/bin/pip install paramiko nltk scipy numpy scikit-learn pandas       

sudo docker exec jupyterhub bash /tmp/job-jupyter-deps-installer.sh
