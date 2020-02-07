#!/bin/bash
############################################################################################################################
# create container
# user@host> sudo docker run -d -it --name oracle -p 59160:22 -p 1521:1521 store/oracle/database-enterprise:12.2.0.1-slim
############################################################################################################################

# start
function start() {
	echo "Starts oracle docker"
	sudo docker start oracle
}

# status 
function status() {
	echo "Status of oracle docker"
	sudo docker ps -al | grep oracle
}

# stop
function stop() {
	echo "Stop oracle docker"
	sudo docker stop oracle
}

# sqlplus
function sqlplus() {
	sudo docker exec -it oracle bash -c "source /home/oracle/.bashrc; sqlplus /nolog"
}

# main
case ${1} in 
	start)
		start
		;;
	status)
		status
		;;
	stop)
		stop
		;;
	sqlplus)
		sqlplus	
		;;
	*)
		echo "Usage: ${0} [start|status|stop|sqlplus]"
		;;
esac

