#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ $# -lt 1 ] ; then
  echo "Usage: `basename $0` <from-date> <to-date>"
  echo "       date format: 2020-03-31"
  exit 0
fi


# After this, startdate and enddate will be valid ISO 8601 dates,
# or the script will have aborted when it encountered unparseable data
startdate=$(date -I -d "$1") || exit -1
enddate=$(date -I -d "$2")     || exit -1
echo $enddate
dir=$(date +%s)
mkdir $dir

while read line; 
do 
    d="$startdate"
    while [ "$d" != "$enddate" ]; do
      mkdir -p $dir/${d}
      curl -o $dir/$d/${d}_sds011_sensor_$line.csv http://archive.luftdaten.info/$d/${d}_sds011_sensor_$line.csv -O $dir
      d=$(date -I -d "$d + 1 day")
  done
done

