FROM conda/miniconda3
MAINTAINER Aurelio Amerio

RUN apt-get update &&\
    apt-get install -y wget gnupg dirmngr apt-transport-https ca-certificates &&\
    wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add - &&\
    echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list &&\
    apt-get update &&\
    apt-get install -y atom &&\
    apt-get clean &&\
    conda install -c anaconda jupyter -y &&\
    conda install -c conda-forge python-language-server -y &&\
    conda clean --yes --all &&\
    apm install atom-ide-ui &&\
    apm install ide-python &&\
    apm install hydrogen
    
# start atom
CMD ["/usr/bin/atom","-f"]
