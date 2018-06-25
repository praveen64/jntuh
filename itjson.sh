#!/bin/sh
echo "::: JSON  JNTUH dataBase  Updater V1.0 By Praveen Gadikoppula :::"
echo  "check before start of JSON files in current Folder"
id=1
while  [ $id -le 58 ]
do
curl "127.0.0.1/index.php?q=$id" > value
hallticket=$(cat "value")

  index=2
  i=0
  declare -a SUB["","","","","","","",""]
  while [ $index -le 10 ]
    do
      SUB[$i]=$(jq --raw-output '.['$index'] | ."NAME:"' $hallticket.txt)
      i=$((i+1))
      index=$((index+1))
    done
curl "127.0.0.1/results.php?&hallticket=$hallticket&sub1=${SUB[0]}&sub2=${SUB[1]}&sub3=${SUB[2]}&sub4=${SUB[3]}&sub5=${SUB[4]}&sub6=${SUB[5]}&sub7=${SUB[6]}&sub8=${SUB[7]}&sub9=${SUB[8]}"

id=$((id+1))
done

