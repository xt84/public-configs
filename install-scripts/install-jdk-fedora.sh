#!/bin/bash


KERNEL=$(uname -m)

alternatives --install /usr/bin/java java $1/jre/bin/java 20000
alternatives --install /usr/bin/javac javac $1/bin/javac 20000
alternatives --install /usr/bin/jar jar $1/bin/jar 20000
alternatives --install /usr/bin/keytool keytool $1/bin/keytool 1

alternatives --config java
alternatives --config javac
alternatives --config jar
alternatives --config keytool

if [[ $KERNEL == "x86_64" ]] ; then
	alternatives --install /usr/lib64/mozilla/plugins/libjavaplugin.so libjavaplugin.so.x86_64 $1/jre/lib/amd64/libnpjp2.so 20000
	alternatives --config libjavaplugin.so.x86_64
else
	alternatives --install /usr/bin/javaws javaws $1/jre/bin/javaws 20000
	alternatives --install /usr/lib/mozilla/plugins/libjavaplugin.so libjavaplugin.so $1/jre/lib/i386/libnpjp2.so 20000
	alternatives --config javaws
	alternatives --config libjavaplugin.so
fi


JAVA_PATHS=$(cat <<EOF
JAVA_HOME=$1
JAVA_BIN=$1/bin
PATH=$PATH:$1/bin
export JAVA_HOME
export JAVA_BIN
export PATH
EOF
)
echo "${JAVA_PATHS}" >> /etc/profile

