#!/bin/sh
echo ":::R16 RESULTS  SNIPPER V1.0 by Praveen Gadikoppula::"
id=500
while [ $id -le 599 ]
do
hallticket=16BH1A0$id
curl "http://epayments.jntuh.ac.in/results/resultAction?degree=btech&examCode=1284&etype=r16&result=null&grad=null&type=supply&htno=$hallticket" > $hallticket.html
echo  "$hallticket.html SuccessFul"
id=$((id+1))
done
