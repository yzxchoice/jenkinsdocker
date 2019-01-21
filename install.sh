#!/bin/sh

if [ -e package-lock.json ] ;then
    npm i --no-package-lock --registry=http://http://10.63.5.12:8081/repository/npmgroup/
    npm i --package-lock-only --registry=http://http://10.63.5.12:8081/repository/npmgroup/
else
    npm i --registry=http://http://10.63.5.12:8081/repository/npmgroup/
fi