############################################################
# Dockerfile to build a customized Jenkins image
#
# Based on jenkinsci/jenkins
############################################################

FROM jenkinsci/jenkins

MAINTAINER mail@simonbrunner.com

ENV M3_VERSION 3.6.0

USER root
RUN apt-get update 
RUN apt-get install -y mc

RUN cd /opt && \
    wget http://www-eu.apache.org/dist/maven/maven-3/$M3_VERSION/binaries/apache-maven-$M3_VERSION-bin.tar.gz && \
    tar xzf apache-maven-$M3_VERSION-bin.tar.gz && \
    rm *.tar.gz && \
    mv apache-maven-$M3_VERSION maven-3
ENV M3 /opt/maven-3

USER jenkins
