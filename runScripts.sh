#!/usr/bin/env bash

find ./src/ -name "*.jmx" > fileName.txt

scriptsCount=0
successCount=0

for file in $(<fileName.txt)
do
    scriptsCount=$((scriptsCount+1))
    result=$(./apache-jmeter-${jmeter_version}/bin/jmeter -n -t $file | grep 'Err:' | sed 's/.*(\([0-9]*\).*/\1/g')
    if [ $result -gt 0 ]
    then
        echo $file failed
    else
        successCount=$((successCount+1))
        echo $file sucess
    fi
done

if [ "$successCount" -eq "$scriptsCount" ]
    then
        echo All $successCount scirpts execute success
    else
        echo $successCount success, and $scriptsCount scriptsFile exist.
        exit 1
fi
