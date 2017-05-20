#!/bin/bash
LANG=en_us
DATA="data"

echo "Github Booster is running..."
echo -n "" > $DATA

for ((i=1; i<=365*5; i++))
do
  d=$(date --date="-$i day")
  repeat=$(( ( RANDOM % 10 )  + 1 )) # generate random number from 1 to 10
  while [ $repeat -gt 0 ]
  do
    echo $d >> $DATA
    git add data
    GIT_COMMITTER_DATE="$d" git commit -m "commit date: $d" --date="$d"
    let repeat=repeat-1
  done
done
