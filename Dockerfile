FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

UN apt-get -y update && apt-get -y install git python-dev libglpk-dev python-pip
RUN apt-get install -y numpy Scipy joblib multiprocessing statsmodels matplotlib
RUN pip install --upgrade pip
RUN pip install -e git+https://github.com/jianlianggao/papy.git@legacy#egg=papy

ENTRYPOINT ["papy/pa.py"]
