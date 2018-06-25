#!/bin/sh
echo "::: JSON  JNTUH dataBase  Updater V1.0 By Praveen Gadikoppula :::"
echo  "check before start of JSON files in current Folder"
echo "Enter  Hallticket Last-3 digits of Start File" 
read start
echo "Enter  Hallticket Last-3 digits of End File"
read  end
while  [ $start -le $end ]
do
  id=2
  i=0
  declare -a SUB["","","","","","","",""]
  while [ $id -le 10 ]
    do
      SUB[$i]=$(jq --raw-output '.['$id'] | ."NAME:"' 16BH1A1$start.txt)
      i=$((i+1))
      id=$((id+1))
    done
curl "127.0.0.1/results.php?&hallticket=16BH1A1$start&sub1=${SUB[0]}&sub2=${SUB[1]}&sub3=${SUB[2]}&sub4=${SUB[3]}&sub5=${SUB[4]}&sub6=${SUB[5]}&sub7=${SUB[6]}&sub8=${SUB[7]}&sub9=${SUB[8]}"

start=$((start+1))
done

