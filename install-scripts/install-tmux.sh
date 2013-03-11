#!/bin/sh

CURRENT_DIR=`pwd`
CURRENT_BACKUP_DIR="$HOME/backup/tmux-conf-backup"

HOME_BIN_DIR="$HOME/Bin"

CURRENT_TMUX_CONF="$CURRENT_DIR/../tmux/tmux.conf"
CURRENT_TMUX_START="$CURRENT_DIR/../tmux/tmux.sh"

TARGET_TMUX_CONF="$HOME/.tmux.conf"
TARGET_TMUX_START="$HOME_BIN_DIR/tmux.sh"

if [ ! -d $CURRENT_BACKUP_DIR ]; then
    mkdir -p $CURRENT_BACKUP_DIR
fi

if [ -f $TARGET_TMUX_CONF ]; then
    if [ -L $TARGET_TMUX_CONF ]; then
        rm $TARGET_TMUX_CONF
    else
        mv $TARGET_TMUX_CONF $CURRENT_BACKUP_DIR
    fi
fi
ln -s $CURRENT_TMUX_CONF $TARGET_TMUX_CONF

if [ -f $TARGET_TMUX_START ]; then
    if [ -L $TARGET_TMUX_START ]; then
        rm $TARGET_TMUX_START
    else
        mv $TARGET_TMUX_START $CURRENT_BACKUP_DIR
    fi
fi
ln -s $CURRENT_TMUX_START $TARGET_TMUX_START

