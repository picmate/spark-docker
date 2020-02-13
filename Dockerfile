FROM ubuntu:bionic

RUN 	apt -y update -qq && \
	apt -y install sudo && \
	sudo apt -y install curl && \
	sudo apt -y install openjdk-8-jdk && \
	sudo apt -y install software-properties-common && \
	sudo add-apt-repository -y ppa:deadsnakes/ppa && \
	sudo apt -y install python3.7 && \
	sudo apt -y install python3-pip
		
WORKDIR /app

RUN	curl -O "http://mirror.cc.columbia.edu/pub/software/apache/spark/spark-2.4.4/spark-2.4.4-bin-hadoop2.7.tgz" && \
	tar -xzf spark-2.4.4-bin-hadoop2.7.tgz && \
	mv spark-2.4.4-bin-hadoop2.7 /opt/spark

RUN	echo "export SPARK_HOME=/opt/spark" >> ~/.bashrc && \
	echo "export PATH=\$PATH:\$SPARK_HOME/bin:\$SPARK_HOME/sbin" >> ~/.bashrc && \
	echo "export PYSPARK_PYTHON=python3" >> ~/.bashrc
	
RUN	pip3 install jupyter	

EXPOSE	80
EXPOSE	8080
EXPOSE	8090
