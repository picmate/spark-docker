# spark-docker
A dockerized version of spark intended for testing

A dockerized version of spark that can be used for local testing purposes. Uses spark 2.4 from https://www.apache.org/dyn/closer.lua/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz

To build the image (cd to the repo):
docker build -t spark .

To run:
docker run -it --restart=always -p 2020:8080 --name spark spark-docker bash

or

sudo docker run -d --restart=always -p 3030:8080 -p 3090:8090 -v /path/dev/spark_workspace:/app/dev --name spark-local spark bash -c "jupyter notebook --ip=0.0.0.0 --port=8090 --allow-root"

in detach mode to start a jupyter server to do the experiments



If the build fail at spark download, pick a different mirror from here and add that in the Dockerfile https://www.apache.org/dyn/closer.lua/spark/spark-2.4.5/spark-2.4.5-bin-hadoop2.7.tgz. Make sure to change tgz expand command to point to the correct file if the mirror is modified.
