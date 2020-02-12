# spark-docker
A dockerized version of spark intended for testing

A dockerized version of spark that can be used for local testing purposes. Uses spark 2.4 from https://www.apache.org/dyn/closer.lua/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz

To build the image (cd to the repo):
docker build -t spark .

To run:
docker run -it --restart=always -p 2020:8080 --name spark spark-docker bash
