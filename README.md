# System Installation Guide

## SSH Server Installation
```shell
# installs openssh-server
user@host> sudo apt-get install openssh-server

# checks service
user@host> sudo service sshd status
```

# NFS(Network File System) Configuration
```shell
# installs packages
user@host> sudo apt-get install rpcbind nfs-common

# sets fstab configuration file
user@host> sudo vim /etc/fstab
...
192.168.0.3:/volume1/01.user /home/01.user nfs defaults 0 0
...
```
# JAVA Environment
## OPENJDK installation
```shell
# search openjdk packages
user@host> sudo apt-cache search openjdk

# installs openjdk packages
user@host> sudo apt-get install openjdk-8-*

# checks installation
user@host> java -version
```

# NODEJS Environment
## nodejs installation
```shell
# searches nodejs package
user@host> sudo apt-cache search nodejs

# installs package
user@host> sudo apt-get install nodejs-*

# checks installation
user@host> node --help
```

## NPM installation
```shell
# installs package
user@host> sudo apt-get install npm

# checks installation
user@host> npm --help
```

## PM2(Process Manager for Nodejs) installation
```shell
# installs pm2 package
user@host> sudo npm install pm2 -g

# checks installation
user@host> pm2 --help
```
