echo -e "\nexport PYSPARK_PYTHON=/home/hadoop/conda/bin/python" >> $SPARK_HOME/conf/spark-env.sh
echo "export PYSPARK_DRIVER_PYTHON=/home/hadoop/conda/bin/jupyter" >> $SPARK_HOME/conf/spark-env.sh
echo "export PYSPARK_DRIVER_PYTHON_OPTS='notebook --no-browser --ip=$1'" >> $SPARK_HOME/conf/spark-env.sh

sudo apt-get update
sudo apt-get install -y git

git clone https://github.com/Beomi/emr-bootstrap

chmod +x emr-bootstrap/install_apt_requirements.sh
./emr-bootstrap/install_apt_requirements.sh
chmod +x emr-bootstrap/install_pip_requirements.sh
./emr-bootstrap/install_pip_requirements.sh

