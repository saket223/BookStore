#!/bin/bash

if [[ ! -d certs ]]
then
    mkdir certs
    cd certs/
    if [[ ! -f localhost.pfx ]]
    then
        dotnet dev-certs https -v -ep localhost.pfx -p 28ea7014-d953-401e-85f6-8af5edff6c02 -t
    fi
    cd ../
fi

docker-compose up -d
