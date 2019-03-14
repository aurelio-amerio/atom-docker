FROM ubuntu:18.04
RUN apt-get update \
&& apt-get install -y firefox \
&& apt-get clean
CMD /usr/bin/firefox
