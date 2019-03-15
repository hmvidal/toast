FROM continuumio/anaconda3:5.3.0

RUN useradd -d /home/toast -ms /bin/bash toast \
 && mkdir /opt/toast

COPY entrypoint.sh /opt/toast/

RUN chown toast:toast /opt/toast/* \
 && chmod 700 /opt/toast/entrypoint.sh

RUN apt-get update \
 && apt-get install -y \
      fonts-humor-sans \
      plantuml \
 && apt-get clean

RUN conda update --all \
 && conda install jupyter -y

RUN pip install PyHamcrest iplantuml


USER toast
WORKDIR /opt/toast
EXPOSE 8888
ENTRYPOINT ["./entrypoint.sh"]
