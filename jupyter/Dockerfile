FROM continuumio/anaconda3:2019.10

RUN useradd -d /home/toast -ms /bin/bash toast \
 && mkdir /opt/toast

COPY entrypoint.sh /opt/toast/

RUN chown toast:toast /opt/toast/* \
 && chmod 700 /opt/toast/entrypoint.sh

# To solve weird java circular dependency issue
RUN mkdir -p /usr/share/man/man1

RUN apt-get update -y \
 && apt-get install -y \
      fonts-humor-sans \
      plantuml \
 && apt-get clean

RUN conda update --all \
 && conda install jupyter -y

RUN pip install PyHamcrest iplantuml folium


USER toast
WORKDIR /opt/toast
EXPOSE 8888
ENTRYPOINT ["./entrypoint.sh"]

