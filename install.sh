#!/bin/sh

if [ -e package-lock.json ] ;then
    npm i --no-package-lock --registry=http://127.0.0.1:8081/repository/npmgroup/
    npm i --package-lock-only --registry=http://127.0.0.1:8081/repository/npmgroup/
else
    npm i --registry=http://127.0.0.1:8081/repository/npmgroup/
fi