#!/bin/bash
set -e

while ! nc -z octobercms-mysql 3306 ;
do
    echo "############# Waiting for octobercms-mysql to start.";
    sleep 3;
done;