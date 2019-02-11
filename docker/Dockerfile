FROM amazonlinux:2018.03

# Install wget, tar, bzip2 for Anaconda
RUN yum install -y wget tar bzip2

RUN cd /root && \
    wget https://repo.anaconda.com/archive/Anaconda3-2018.12-Linux-x86_64.sh

RUN chmod +x /root/Anaconda3-2018.12-Linux-x86_64.sh &&\
    /root/Anaconda3-2018.12-Linux-x86_64.sh -b

# KoNLPy
RUN yum install -y gcc72-c++ git python3-dev
RUN yum install -y java-1.8.0-openjdk-devel.x86_64
RUN yum install -y python27-devel
RUN curl -L https://raw.githubusercontent.com/konlpy/konlpy/master/scripts/mecab.sh | bash
RUN /root/anaconda3/bin/python -m pip install konlpy
# RUN 
RUN cd /tmp/mecab-python-0.996 && \
    /root/anaconda3/bin/python /tmp/mecab-python-0.996/setup.py build
RUN cd /tmp/mecab-python-0.996 && \
    /root/anaconda3/bin/python /tmp/mecab-python-0.996/setup.py install
# RUN cd /tmp/mecab-ko-dic-2.1.1-20180720 && \
# ldconfig -p | grep /usr/local/lib
# RUN mecab -d /usr/local/lib/mecab/dic/mecab-ko-dic
RUN echo "/usr/local/lib" > /etc/ld.so.conf
RUN ldconfig && ldconfig -p | grep libmecab

# Other Libs
RUN /root/anaconda3/bin/conda install -y gensim

CMD ["/root/anaconda3/bin/ipython"]

# from konlpy.tag import Mecab;mecab = Mecab()
# find / -name "Python.h" -type f
# mecab = Mecab('/usr/local/lib/mecab/dic/mecab-ko-dic')

# from MeCab import Tagger