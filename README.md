# Docker_Demo: ??????????
The OEX package just uses a modest IRIS instance in Docker     
It merges IPM package of ??????? with some demo data    
It is built using the small [Mini-Docker-Template](https://github.com/rcemper/mini-docker)    
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
$ git clone https://github.com/rcemper/?????????.git
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
This presents OEX package [???????](https://openexchange.intersystems.com/package/?????) using the actual IPM module    
All user documentation is found there in the [original repo](https://github.com/*****/???????/blob/master/docs/README.md)  
