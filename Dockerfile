FROM ubuntu:latest

FROM ubuntu:14.04
RUN  apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

# Retrieve Apache Cassandra binary tarballs
RUN mkdir /usr/bin/cassandra \
&& mkdir /etc/cassandra \
&& wget --quiet -O - https://archive.apache.org/dist/cassandra/2.1.19/apache-cassandra-2.1.19-bin.tar.gz | tar xz -C /usr/bin/cassandra/ \
&& wget --quiet -O - https://archive.apache.org/dist/cassandra/2.1.12/apache-cassandra-2.1.12-bin.tar.gz | tar xz -C /usr/bin/cassandra/
