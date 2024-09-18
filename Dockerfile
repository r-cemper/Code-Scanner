# Dockerfile just for Online Demo
# Explicit version for Quality check !!! What a nonsense !!!
ARG IMAGE=intersystemsdc/iris-community
ARG VERSION=2024.1
FROM $IMAGE:$VERSION
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
