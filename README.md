# Code-Scanner
This routine is built to work in Caché/Ensemble/.. and IRIS without any changes  
The original code was used to prepare the migration of an installation to IRIS   
that was grown over decades.  
This dual-sided compatibility was achieved by using pure ObjectScript without   
any special features. It scans CLS,MAC,INT,INC for any kind of text.
### Prerequisites
Make sure you have [git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git) and [Docker desktop](https://www.docker.com/products/docker-desktop) installed.
### Installation
Clone/git pull the repo into any local directory
```
git clone https://github.com/r-cemper/Code-Scanner.git
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
log into any terminal session
```
USER>do ^rcc.find
```
- Next enter some string to be searched    
- **Verbose** allows you to see matches in detail 
- **Force UpperCase** is useful to make scan case insensitive
- **Code type** allows splitting scan into several steps
- **Namespace** defines where the scan is executed    
  %-routines and %-classes are always excluded for
  namespaces other than %SYS
  *UPDATE*  triggered by a recent request
  running across ALL Namspaces was added.
 

### Practical hint
- run a scan over ALL non-verbose to find affected code types
- next run over INC and apply the required changes
- then run CLS and apply the required changes
- then run over MAC and apply the required changes
- most likely there is no need for any fix in INT 

[Article 1 in DC](https://community.intersystems.com/post/code-scanner)   
[Article 2 in DC](https://community.intersystems.com/post/code-scanner-enhanced) 
[Video](https://youtu.be/JpRJzDNp96c)    

[Demo Server SMP](https://code-scanner.demo.community.intersystems.com/csp/sys/UtilHome.csp)   
[Demo Server WebTerminal](https://code-scanner.demo.community.intersystems.com/terminal/)    
