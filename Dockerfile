############################################################
# Dockerfile to build a customized Jenkins image
#
# Based on jenkinsci/jenkins
############################################################

FROM jenkinsci/jenkins

MAINTAINER mail@simonbrunner.com

ENV M3_VERSION 3.3.9

USER root
RUN apt-get update 
RUN apt-get install -y wget

RUN cd /opt
RUN wget http://www-eu.apache.org/dist/maven/maven-3/$M3_VERSION/binaries/apache-maven-$M3_VERSION-bin.tar.gz 
RUN tar xzvf apache-maven-$M3_VERSION-bin.tar.gz 
RUN rm *.tar.gz 
RUN mv apache-maven-$M3_VERSION maven-3
ENV M3_HOME /opt/maven-3
ENV M3 /opt/maven-3

USER jenkins
