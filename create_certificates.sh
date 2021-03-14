#! /bin/bash

if ! [ -d ".certificates" ]; then
    mkdir .certificates
fi

keytool -genkey -keyalg RSA -alias cassandrakey -keystore ./.certificates/.keystore -storepass cassandra -validity 360 -keysize 2048
keytool -export -alias cassandrakey -keystore ./.certificates/.keystore -rfc -file ./.certificates/certificate.cer
keytool -import -file ./.certificates/certificate.cer -alias cassandrakey -keystore ./.certificates/.truststore

