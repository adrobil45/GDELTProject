# GDELTProject

Authors: Fabrice Pont, Morgan Fassier, Adrien Robiliard, Théo Lefièvre, Ernest Majdalani

## Project Scope

Design a resilient distributed database to store worldwide events related to COVID-19 that were mentioned in all media sources in the year 2020 from the GDELT Database.

In this project we aim to answer the following :

+ How many articles and events are related to the COVID-19 pandemic, grouped by day, country and language ?
+ For a given country, list all events that have taken place sorted by how many times they were mentioned, grouped by _yyyy, yyyy-mm or yyyy-mm-dd_.
+ For a given source (gkg.SourceCommonName), list the average tone and number of articles associated with each theme, person and location, grouped by _yyyy, yyyy-mm or yyyy-mm-dd_.
+ Do we observe a pattern that could identify another pandemic wave ?

## Technologies Used

+ Cassandra 3.11.9
+ Spark 3.0.1
+ Zeppelin 0.9.0
+ AWS S3
+ AWS EMR: 1 master node, 5 workers (m5.xlarge)

## Architecture

![Architecture](images/Architecture.png)

### Setting up the environment
### Deployment of resources on AWS
+ #### Terraform
+ #### Ansible
### Cassandra data model
### ETLs for data preparation
### Writing to the Cassandra Cluster
### Queries

TEST
