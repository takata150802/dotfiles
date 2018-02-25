#!/bin/bash -eu
cd $(dirname $0)
if [ -e .conkyrc ]; then
    rm .conkyrc
else
    :
fi

if [ $HOSTNAME = "takata-hal-lab01" ]; then
    ln -fs conkyrc_hal-lab01 .conkyrc
elif [ $HOSTNAME = "takata-hal-lab02" ]; then
    ln -fs conkyrc_hal-lab02 .conkyrc
elif [ $HOSTNAME = "cognitive0"  ]; then
    ln -fs conkyrc_cognitive0 .conkyrc
elif [ $HOSTNAME = "ryotakata-ubuntu00"  ]; then
    ln -fs conkyrc_ryotakata-ubuntu00 .conkyrc
elif [ $HOSTNAME = "ubuntu00"  ]; then
    ln -fs conkyrc_ubuntu00 .conkyrc
else 
    echo "Please register your host name & .conkyrc!"
fi

for dotfile in .?*
do
    if [ $dotfile != '..' ] && [ $dotfile != '.git' ]
    then
        ln -ifs "$PWD/$dotfile" $HOME
    fi
done
