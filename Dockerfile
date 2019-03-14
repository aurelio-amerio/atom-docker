FROM conda/miniconda3
RUN wget -qO - https://packagecloud.io/AtomEditor/atom/gpgkey | apt-key add - &&\
    sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list' &&\
    apt-get update && \
    apt-get install atom &&\
    apt-get clean &&\
    conda install -c anaconda jupyter -y &&\
    conda install -c conda-forge python-language-server -y &&\
    apm install atom-ide-ui &&\
    apm install ide-python &&\
    apm install hydrogen &&\
    conda clean --yes --all






CMD atom
