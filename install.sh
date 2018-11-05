#!/bin/sh

# set -x
function copy_vim_conf
{
	src="vim/$1/*"
	dst="/$user/.vim/$1/"

	if [ ! -d "$dst" ] ; then
		mkdir $dst
	fi
	cp $src	$dst
}

user=$(whoami)
copy_vim_conf colors
copy_vim_conf plugin
copy_vim_conf doc

cp vim/vimrc 	~/.vimrc
