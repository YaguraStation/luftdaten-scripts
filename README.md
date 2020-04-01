Dirty scripts to upstream project [luftdaten.info](https://luftdaten.info/).
Based on the question whether the sensor readings for a country during a certain
period can be visualized. 

Get sensor IDs by country with `./get-sensor-ids.sh -c za`

Pipe output to file or to *get-csv.sh* `./get-sensor-ids.sh -c za | ./get-csv.sh 2020-03-01 2020-03-31`
