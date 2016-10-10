FROM ubuntu:16.04
MAINTAINER PhenoMeNal-H2020 Project ( phenomenal-h2020-users@googlegroups.com )

RUN apt-get -y update && apt-get -y install git python-dev python-pip
RUN pip install --upgrade pip
RUN pip install git+https://github.com/jianlianggao/papy.git

ENTRYPOINT ["pa.py"]
