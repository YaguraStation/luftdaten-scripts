#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ $# -lt 1 ] ; then
  echo "Usage: `basename $0` -c <country_code>"
  echo "       country_code: Two letter country code e.g. NL, DE"
  exit 0
fi

while getopts c:t:f: option
do
case "${option}"
in
c) COUNTRY=${OPTARG^^};;
# TODO currently fixed to PM sensor SDS011, but the project supports more
t) TYPE=${OPTARG^^};;
# TODO output file
f) FILE=${OPTARG};;
esac
done

# API doc at https://github.com/opendata-stuttgart/meta/wiki/EN-APIs
curl https://data.sensor.community/airrohr/v1/filter/country={$COUNTRY} | jq -c '.[].sensor | select (.sensor_type.name == "SDS011") | .id '
