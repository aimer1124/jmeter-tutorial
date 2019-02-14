#!/usr/bin/env bash

find ./src/ -name "*.jmx" > fileName.txt

cat fileName.txt

for file in $(<fileName.txt)
do
    result=$(./apache-jmeter-5.0/bin/jmeter -n -t $file | grep 'Err:' | sed 's/.*(\([0-9]*\).*/\1/g')
    if [ $result -gt 0 ]
    then
        echo $file failed
        exit 1
    else
        echo $file sucess
    fi
done