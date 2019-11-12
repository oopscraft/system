# System Installation Guide

# SSH Server Installation
## installs openssh-server
```
user@host> sudo apt-get install openssh-server
```

# NFS(Network File System) Configuration
## NFS package installation
```
user@host> sudo apt-get install rpcbind nfs-common
```
## fstab configuration
```
user@host> sudo vim /etc/fstab
...
192.168.0.3:/volume1/01.user /home/01.user nfs defaults 0 0
...
```
# JAVA Environment
## OPENJDK installation
```
# search openjdk packages
user@host> sudo apt-cache search openjdk
# install openjdk
user@host> sudo apt-get install openjdk-8-*
# checks installation
user@host> java -version
```

# NODEJS Environment
## nodejs installation
```
# searches nodejs package
user@host> sudo apt-cache search nodejs
# installs package
user@host> sudo apt-get install nodejs-*
# checks installation
user@host> node --help
```

## NPM installation
```
# installs package
user@host> sudo apt-get install npm
# checks installation
user@host> npm --help
```

## PM2(Process Manager for Nodejs) installation
```
# installs pm2 package
user@host> sudo npm install pm2 -g
# checks installation
user@host> pm2 --help
```
