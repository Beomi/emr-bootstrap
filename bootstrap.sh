sudo apt-get update
sudo apt-get install -y git

git clone https://github.com/Beomi/emr-bootstrap

chmod +x emr-bootstrap/install_apt_requirements.sh
./emr-bootstrap/install_apt_requirements.sh
chmod +x emr-bootstrap/install_pip_requirements.sh
./emr-bootstrap/install_pip_requirements.sh

