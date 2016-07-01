
FROM     ubuntu:14.04

# java
RUN      apt-get update && \
          apt-get -y install software-properties-common debconf-utils
RUN      echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true |\
          /usr/bin/debconf-set-selections
RUN      add-apt-repository ppa:webupd8team/java
RUN      apt-get update && apt-get -y install oracle-java8-installer

# neo4j
RUN      mkdir /root/src
WORKDIR  /root/src
RUN      wget -O neo4j-community-3.0.3-unix.tar.gz https://neo4j.com/artifact.php?name=neo4j-community-3.0.3-unix.tar.gz
RUN      tar -xf neo4j-community-3.0.3-unix.tar.gz

