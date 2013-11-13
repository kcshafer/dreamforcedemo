#! /bin/bash

WDIR=$PWD
TARGET="https://login.salesforce.com" #static for demo purposes 

while getopts ":p:u:" optname
do
	case "$optname" in 
		"u")
			UNAME=$OPTARG
		;;
		"p")
			PASS=$OPTARG
		;;
	esac
done     

cat "${WDIR}"/build.properties.temp | sed "s#{username}#$UNAME#;s#{password}#$PASS#;s#{serverurl}#$TARGET#;" > "${WDIR}"/build.properties
