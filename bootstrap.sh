echo -e "\nexport PYSPARK_PYTHON=/home/hadoop/conda/bin/python" >> /etc/spark/conf/spark-env.sh
echo "export PYSPARK_DRIVER_PYTHON=/home/hadoop/conda/bin/jupyter" >> /etc/spark/conf/spark-env.sh
echo "export PYSPARK_DRIVER_PYTHON_OPTS='notebook --no-browser --ip=$1'" >> /etc/spark/conf/spark-env.sh

chmod +x install_apt_requirements.sh
./install_apt_requirements.sh
chmod +x install_pip_requirements.sh
./install_pip_requirements.sh

