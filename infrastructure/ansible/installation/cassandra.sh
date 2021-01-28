#!/bin/bash

# Installation de Cassandra

wget http://archive.apache.org/dist/cassandra/3.11.9/apache-cassandra-3.11.9-bin.tar.gz
tar -xvf apache-cassandra-3.11.9-bin.tar.gz
rm apache-cassandra-3.11.9-bin.tar.gz

wget https://repo1.maven.org/maven2/com/datastax/spark/spark-cassandra-connector-assembly_2.12/3.0.0/spark-cassandra-connector-assembly_2.12-3.0.0.jar -P /usr/lib/spark/jars
