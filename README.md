# System Installation Guide

## SSH Server Installation
```shell
# installs openssh-server
user@host> sudo apt-get install openssh-server

# checks service
user@host> sudo service sshd status
```

## Shell In A Box(Web based SSH) Installation
```shell
# searches package
user@host> sudo apt-cache search shellinabox

# installs package
user@host> sudo apt-get install shellinabox

# sets configuration(port)
user@host> sudo vim /etc/default/shellinabox
...
SHELLINABOX_PORT=4200
...

# restarts process
user@host> sudo service shellinabox restart
```

## NFS(Network File System) Configuration
```shell
# installs packages
user@host> sudo apt-get install rpcbind nfs-common

# sets fstab configuration file
user@host> sudo vim /etc/fstab
...
192.168.0.3:/volume1/01.user /home/01.user nfs defaults 0 0
...
```
see <a href="etc/fstab" target="_blank">/etc/fstab</a> for details.

## JAVA Environment
```shell
# search openjdk packages
user@host> sudo apt-cache search openjdk

# installs openjdk packages
user@host> sudo apt-get install openjdk-8-*

# checks installation
user@host> java -version
```

## NODEJS Environment
```shell
# searches nodejs package
user@host> sudo apt-cache search nodejs

# installs nodejs package
user@host> sudo apt-get install nodejs-*

# checks nodejs
user@host> node --help

# installs NPM package manager
user@host> sudo apt-get install npm

# checks NPM package manager
user@host> npm --help

# installs PM2(Process Manager for Nodejs) installation
user@host> sudo npm install pm2 -g

# checks PM2 installation
user@host> pm2 --help
```

# VIM Environment
```shell
user@host> sudo vim /etc/vimrc
```
see <a href="etc/vimrc" target="_blank">/etc/vimrc</a> for details.

