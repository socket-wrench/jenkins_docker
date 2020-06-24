FROM jenkins/jenkins:latest
USER root

COPY docker/docker* /usr/local/bin/

RUN groupadd -g 990 docker
RUN usermod -aG staff,docker jenkins

USER jenkins
