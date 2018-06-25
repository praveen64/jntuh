#!/bin/sh
echo ":::R16 RESULTS  SNIPPER V1.0 by Praveen Gadikoppula::"
id=1
while [ $id -le 57 ]
do
curl "127.0.0.1/index.php?q=$id" > value
hallticket=$(cat "value")
curl "http://epayments.jntuh.ac.in/results/resultAction?degree=btech&examCode=1284&etype=r16&result=null&grad=null&type=supply&htno=$hallticket" > $hallticket.html
echo  "$hallticket.html SuccessFul"
id=$((id+1))
done
