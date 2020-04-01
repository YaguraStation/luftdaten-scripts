Dirty scripts to upstream project [luftdaten.info](https://luftdaten.info/).
Based on the question whether the sensor readings for a country during a certain
period can be visualized. 

Get sensor IDs by country with `./get-sensor-ids.sh -c za`

Pipe output to file or to *get-csv.sh* `./get-sensor-ids.sh -c za | ./get-csv.sh 2020-03-01 2020-03-31`

**The data for South Africa is in no way representative, given the little
number of sensors the volunteer-driven project currently provides. Support or
follow our [local efforts here](https://air-cape-town.org.za/).**
