# mini-docker
The package creates a very basic IRIS instance in Docker    
It's a proposal for an instance independent of IPM versions.
## Description
This repository provides a generic development environment 
for coding productively with InterSystems ObjectScript.    
This template:   
* Runs InterSystems IRIS Community Edition in a docker container
* besides ZPM it includes WEBTERMINAL and PASSWORDLESS package
* the namespace defaults to USER
* any additional setting is provided by additional package related installation
 
### Usage
The container is built directly from **intersystemsdc/iris-community** without any Dockerfile
- **bscript.sh** runs BEFORE IRIS is started  
- **ascript.sh** is executed AFTER the start of IRIS and executes **iris.script** by default
- changing of port mapping happens in **docker-compose.yml** 

### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
$ git clone https://github.com/r-cemper/mini-docker.git
```
To build and start the container run:
```
$ docker compose up -d && docker compose logs -f
```
To open IRIS Terminal do:
```
$ docker-compose exec iris iris session iris
USER>
```
or using **WebTerminal**
```
http://localhost:42773/terminal/
```
To access IRIS System Management Portal
```
http://localhost:42773/csp/sys/UtilHome.csp
```
### How to use it
This presents OEX package [xxxxxxx]() using the actual IPM module    
All user documentation is found there in the [original repo]()  
