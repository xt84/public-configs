#!/bin/bash

# $1 - key store path
# $2 - key password
# $3 - key store password
# $4 - certificate file
keytool\
 -import\
 -alias $4\
 -provider ru.CryptoPro.JCP.JCP\
 -keypass $2\
 -storetype HDImageStore\
 -keystore $1\
 -storepass $3\
 -file $4
