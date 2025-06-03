#!/bin/bash
[ "$#" -ne 2] && exit
api_key= #TODO
LAT= $1
LON= $2
data_path='.weather[].main,.main.temp,.main.humidity,.wind.speed'
data=$(curl -sf "https://api.openweathermap.org/data/2.5/weather?$LAT&$LON&units=metric&lang=en&appid=$api_key" | jq -r $data_path)
read MAIN TEMP HUM WSPEED <<< $(echo $data)
DELIM="|"
echo " $MAIN $DELIM$TEMP󰔄$DELIM  "$WSPEED"m/s"
