# Dockerfile just for Online Demo
ARG IMAGE=intersystemsdc/iris-community:2024.1
# Explicit version for Quality check !!! What a nonsense !!!
ARG IMAGE=intersystemsdc/iris-community:latest
FROM $IMAGE
USER root
WORKDIR /home/irisowner/dev  
RUN chown ${ISC_PACKAGE_MGRUSER}:${ISC_PACKAGE_IRISGROUP} /home/irisowner/dev
USER ${ISC_PACKAGE_MGRUSER}

COPY src src
COPY module.xml module.xml
COPY iris.script iris.script

RUN iris start IRIS \
	&& iris session IRIS < iris.script \
    && iris stop IRIS quietly 
