#!/bin/sh

CURRENT_DIR=`pwd`
CURRENT_BACKUP_DIR="$HOME/backup/bash-conf-backup"

VIMRC="$CURRENT_DIR/../vim/vimrc"
VIM_DOT_DIR="$CURRENT_DIR/../vim/dot-dir"

PATHOGEN="$VIM_DOT_DIR/vim-pathogen/autoload"
VIMERL="$VIM_DOT_DIR/vimerl"
VIMSOLARIZED="$VIM_DOT_DIR/vim-colors-solarized"
NERDTREE="$VIM_DOT_DIR/nerdtree"

TARGET="$HOME/.vim"
TARGET_BUNDLE="$TARGET/bundle"
TARGET_PATHOGEN="$TARGET/autoload"
TARGEN_VIMERL="$TARGET_BUNDLE/vimerl"
TARGET_VIMSOLARIZED="$TARGET_BUNDLE/vim-colors-solarized"
TARGET_NERDTREE="$TARGET_BUNDLE/nerdtree"

if [ ! -d $TARGET_BUNDLE ]; then
    mkdir -p $TARGET_BUNDLE
fi

if [ -d $TARGET_PATHOGEN ]; then
    if [ -L $TARGET_PATHOGEN ]; then
        rm $TARGET_PATHOGEN
    else
        if [ ! -d $CURRENT_BACKUP_DIR ]; then
            mkdir $CURRENT_BACKUP_DIR
        fi
        mv $TARGET_PATHOGEN $CURRENT_BACKUP_DIR
    fi
fi
ln -s $PATHOGEN $TARGET_PATHOGEN

if [ -d $TARGEN_VIMERL ]; then
    echo "Removing Vimerl"
    if [ -L $TARGET_VIMERL ]; then
        rm $TARGEN_VIMERL
    else
        if [ ! -d $CURRENT_BACKUP_DIR ]; then
            mkdir $CURRENT_BACKUP_DIR
        fi
        mv $TARGEN_VIMERL $CURRENT_BACKUP_DIR
    fi
fi
ln -s $VIMERL $TARGEN_VIMERL

if [ -d $TARGET_VIMSOLARIZED ]; then
    if [ -L $TARGET_VIMSOLARIZED ]; then
        rm $TARGET_VIMSOLARIZED
    else
        if [ ! -d $CURRENT_BACKUP_DIR ]; then
            mkdir $CURRENT_BACKUP_DIR
        fi
        mv $TARGET_VIMSOLARIZED $CURRENT_BACKUP_DIR
    fi
fi
ln -s $VIMSOLARIZED $TARGET_VIMSOLARIZED

if [ -d $TARGET_NERDTREE ]; then
    if [ -L $TARGET_NERDTREE ]; then
        rm $TARGET_NERDTREE
    else
        if [ ! -d $CURRENT_BACKUP_DIR ]; then
            mkdir $CURRENT_BACKUP_DIR
        fi
        mv $TARGET_NERDTREE $CURRENT_BACKUP_DIR
    fi
fi
ln -s $NERDTREE $TARGET_NERDTREE



