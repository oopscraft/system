#!/bin/bash
APP_FILE=$(basename ${0})
APP_NAME=${APP_FILE%.*}
PID_FILE=${APP_NAME}.pid
touch ${PID_FILE}
PID=$(cat ${PID_FILE})

# start
function start() {
	if [ -f /proc/${PID}/status ]; then
			echo "Tomcat is running."
			status
			exit -1
	fi
	export CATALINA_PID=${PID_FILE}
	./bin/startup.sh
}

# status
function status() {
	if [ -f /proc/${PID}/status ]; then
		ps -f ${PID}
	fi		
}

# stop
function stop() {
	if [ ! -f /proc/${PID}/status ]; then
		echo "Tomcat is not running."
		exit -1
	fi
	export CATALINA_PID=${PID_FILE}
	./bin/shutdown.sh 
}

# log
function log() {
	tail -F ./logs/catalina.out
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
	log)
		log
		;;
	*)
		echo "Usage: "${0}" [start|status|stop|log]"
		;;
esac

exit 0
