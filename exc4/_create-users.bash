#!/bin/bash

# Создать пользователя viewuser

#openssl genpkey -algorithm RSA -out ./certs/viewuser.key
#openssl req -new -key ./certs/viewuser.key -out ./certs/viewuser.csr
#openssl x509 -req -days 365 -CA /path/to/ca.crt -CAkey ca.key -in ./certs/viewuser.csr -out ./certs/viewuser.crt

# Создать пользователя configuser

#openssl genpkey -algorithm RSA -out ./certs/configuser.key
#openssl req -new -key ./certs/configuser.key -out ./certs/configuser.csr
#openssl x509 -req -days 365 -CA /path/to/ca.crt -CAkey ca.key -in ./certs/configuser.csr -out ./certs/configuser.crt



# Создать пользователя privilegeduser

#openssl genpkey -algorithm RSA -out ./certs/privilegeduser.key
#openssl req -new -key ./certs/configuser.key -out ./certs/privilegeduser.csr
#openssl x509 -req -days 365 -CA /path/to/ca.crt -CAkey ca.key -in ./certs/privilegeduser.csr -out ./certs/privilegeduser.crt



# Создать пользователей в кластере
kubectl config set-credentials viewuser --client-certificate=./certs/viewuser.crt --client-key=./certs/viewuser.key
kubectl config set-credentials configuser --client-certificate=./certs/configuser.crt --client-key=./certs/configuser.key
kubectl config set-credentials privilegeduser --client-certificate=./certs/privilegeduser.crt --client-key=./certs/privilegeduser.key