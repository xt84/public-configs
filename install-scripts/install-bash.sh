#!/bin/sh

CURRENT_DIR=`pwd`
CURRENT_BACKUP_DIR="$HOME/backup/bash-conf-backup"

BASHRC="$CURRENT_DIR/../bash/bashrc"
BASH_ALIASES="$CURRENT_DIR/../bash/bash_aliases"

TARGET_BASHRC="$HOME/.bashrc"
TARGET_BASH_ALIASES="$HOME/.bash_aliases"

if [ ! -d $CURRENT_BACKUP_DIR ]; then
    mkdir -p $CURRENT_BACKUP_DIR
fi

if [ ! -d $CURRENT_BACKUP_DIR ]; then
    mkdir -p $CURRENT_BACKUP_DIR
fi


if [ -f $TARGET_BASHRC ]; then
    if [ -L $TARGET_BASHRC ]; then
        rm $TARGET_BASHRC
    else
        mv $TARGET_BASHRC $CURRENT_BACKUP_DIR 
    fi
fi 
if [ -f $TARGET_BASH_ALIASES ]; then
    if [ -L $TARGET_BASH_ALIASES ]; then
        rm $TARGET_BASH_ALIASES
    else
        mv $TARGET_BASH_ALIASES $CURRENT_BACKUP_DIR
    fi
fi

ln -s $BASH_ALIASES $TARGET_BASH_ALIASES
ln -s $BASHRC $TARGET_BASHRC

