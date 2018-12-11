FROM continuumio/anaconda3:5.3.0

RUN apt-get update \
 && apt-get install -y fonts-humor-sans
RUN conda install jupyter -y

COPY entrypoint.sh /opt/toast/

RUN useradd -d /home/toast -ms /bin/bash toast \
  && chown toast:toast /opt/toast/* \
  && chmod 700 /opt/toast/entrypoint.sh

USER toast
WORKDIR /opt/toast

EXPOSE 8888
ENTRYPOINT ["./entrypoint.sh"]

