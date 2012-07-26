#!/bin/sh

if [ -f $HOME/.bashrc ]; then
	mv $HOME/.bashrc $HOME/.bashrc.bak
fi
ln -s $1 $HOME/.bashrc

if [ -f $HOME/.bash_aliases ]; then
	mv $HOME/.bash_aliases $HOME/.bash_aliases.bak
fi
ln -s $2 $HOME/.bash_aliases

if [ -f $HOME/.bash_profile ]; then
	cp $HOME/.bash_profile $HOME/.bash_profile.bak
fi
echo 'source $HOME/.bashrc' > $HOME/.bash_profile
