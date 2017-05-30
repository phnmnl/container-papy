FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

LABEL software.version="2.0"
LABEL version="1.0"
LABEL software="papy"

RUN apt-get -y update && apt-get -y install git python-pip
#RUN pip install --upgrade pip
#RUN pip install numpy scipy multiprocessing statsmodels
RUN pip install git+https://github.com/jianlianggao/papy.git
RUN apt-get -y clean && apt-get -y autoremove && rm -rf /var/lib/{cache,log}/ /tmp/* /var/tmp/*
#RUN apt-get remove -y python-pip git
ADD run_papy.sh /usr/local/bin/run_papy.sh
RUN chmod +x /usr/local/bin/run_papy.sh

ADD runTest1.sh /usr/local/bin/runTest1.sh
RUN chmod +x /usr/local/bin/runTest1.sh

ENTRYPOINT ["run_papy.sh"]