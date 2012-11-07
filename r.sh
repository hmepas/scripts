#!/bin/bash

dir=`readlink -f $1`

bdir=`dirname $dir`

if_root=`echo "$bdir" | sed -n '/^\// P'`

if [ -z $if_root ]; then
	dir=`pwd`/$dir
fi

is_home=`echo $dir | sed -n "/^$HOME/ P"`

if [ $is_home ]; then
	echo "path inside homedir"
else
	echo "Path outside homedir"
fi
