#!/bin/bash

# Generate key and self signed certificate
# $1 - key store path
# $2 - key password
# $3 - key store password
# $4 - key alias
# $5 - certificate request path
keytool\
 -genkey\
 -alias $4\
 -keysize 512\
 -provider ru.CryptoPro.JCP.JCP\
 -keypass $2\
 -storetype HDImageStore\
 -dname CN=myKey,O=CryptoPro,C=RU\
 -keystore $1\
 -storepass $3\
 -keyalg GOST3410\
 -sigalg GOST3411withGOST3410EL

keytool\
 -certreq\
 -alias $4\
 -provider ru.CryptoPro.JCP.JCP\
 -keypass $2\
 -storetype HDImageStore\
 -keystore $1\
 -storepass $3\
 -sigalg GOST3411withGOST3410EL\
 -file $5
