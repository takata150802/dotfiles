#!/bin/bash -eu
cd $(dirname $0)
if [ -e .conkyrc ]; then
    rm .conkyrc
else
    :
fi

if [ $HOSTNAME = "takata-hal-lab01" ]; then
    ln -s .conkyrc_hal-lab01 .conkyrc
elif [ $HOSTNAME = "cognitive0"  ]; then
    ln -s .conkyrc_cognitive0 .conkyrc
else 
    echo "Please register your host name & .conkyrc!"
fi

for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        ln -is "$PWD/$dotfile" $HOME
    fi
done
