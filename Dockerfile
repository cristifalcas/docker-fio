#FROM ubuntu:18.10
FROM base/archlinux:2018.10.01
MAINTAINER Cristian Falcas

RUN pacman -Syu --noconfirm fio
#RUN apt-get -y update && apt-get -y install fio gnuplot
ADD job.fio /etc/

WORKDIR /tmp/fio-data

ENV RW=readwrite
ENV NJ=1
ENV NF=10
ENV BS=4k
ENV RT=60
ENV SIZE=5M
ENV DIRECT=0
ENV LOG_AVG=50

CMD ["/bin/bash"] 
