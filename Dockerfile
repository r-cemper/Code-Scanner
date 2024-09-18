# just for Online Demo
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
