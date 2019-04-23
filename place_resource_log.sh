#!/usr/bin/env bash

RESOURCE="resource"
SRC="/path/to/resource.log"
DST="/var/www/logs/get_resource/resource.log"

if cp $SRC $DST; then
	chown www-data.www-data $DST
else
	echo "Error copying $SRC" > $DST
	exit -1
fi
