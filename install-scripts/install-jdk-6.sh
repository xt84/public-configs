#!/bin/sh

update-alternatives --install "/usr/bin/java" "java" "$1/bin/java" 1
update-alternatives --install "/usr/bin/javac" "javac" "$1/bin/javac" 1
update-alternatives --install "/usr/bin/javaws" "javaws" "$1/bin/javaws" 1
update-alternatives --install "/usr/bin/keytool" "keytool" "$1/bin/keytool" 1

update-alternatives --config java
update-alternatives --config javac
update-alternatives --config javaws
update-alternatives --config keytool


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
