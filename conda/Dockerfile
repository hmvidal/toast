FROM continuumio/anaconda3:2019.10

RUN useradd -d /home/toast -ms /bin/bash toast \
 && mkdir /opt/toast

COPY entrypoint.sh /opt/toast/

RUN chown toast:toast /opt/toast/* \
 && chmod 700 /opt/toast/entrypoint.sh

RUN apt-get update \
 && apt-get clean

RUN conda update --all -y

USER toast
WORKDIR /opt/toast
ENTRYPOINT ["./entrypoint.sh"]

