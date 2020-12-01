#!/bin/bash


if [ "$#" == "1" ]
then
	AIRPORT="$1"
	YDATE=$(date -d yesterday +"%m/%d/%Y")
	START=$(date -d "$YDATE" +'%s')
	END=$(echo "$START" + "86400" | bc)


elif [ "$#" == "2" ]
then
	DATE="$1"
	AIRPORT="$2"
	NEW_DATE=$(echo "$1" | sed 's_\(.*\)\-\(.*\)\-\(.*\)_\2/\1/\3_')
	START=$(date -d "$NEW_DATE" +'%s')
	END=$(echo "$START" + "86400" | bc)
fi

	curl -s 'https://aviationweather.gov/adds/dataserver_current/httpparam?dataSource=metars&requestType=retrieve&format=csv&stationString='$AIRPORT'&startTime='$START'&endTime='$END'' | grep ''$2'*'