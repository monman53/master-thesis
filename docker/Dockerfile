FROM ubuntu:18.04

RUN apt-get update
RUN apt-get upgrade
RUN apt-get install -y texlive-lang-japanese
RUN apt-get install -y texlive-science
RUN apt-get install -y make

RUN useradd docker
USER docker

VOLUME /workdir
