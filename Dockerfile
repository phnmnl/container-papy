FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

RUN apt-get -y update && apt-get -y install git python-dev python-tk python-pip wget
RUN pip install --upgrade pip
RUN pip install numpy scipy joblib multiprocessing statsmodels matplotlib
RUN pip install git+https://github.com/jianlianggao/papy.git
ADD runTest1.sh /usr/local/bin/runTest1.sh
RUN chmod +x /usr/local/bin/runTest1.sh

ENTRYPOINT ["runTest1.sh"]