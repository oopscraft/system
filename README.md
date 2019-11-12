# system
System Configuration Examples

# SSH Server Installation
## installs openssh-server
```
user@host> sudo apt-get install openssh-server
```

# NFS(Network File System) Configuration
## installs package
```
user@host> sudo apt-get install rpcbind nfs-common
```
## sets configuration
```
user@host> sudo vim /etc/fstab
...
192.168.0.3:/volume1/01.user /home/01.user nfs defaults 0 0
...
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
