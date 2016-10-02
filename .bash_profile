# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

### tktmdfd160914 for colordiff
export LESS=' -R'

if [ $HOSTNAME = "takata-hal-lab01" ]; then
    . "$HOME/.bash_profile_hal-lab01"
fi
if [ $HOSTNAME = "takata-hal-lab02" ]; then
    . "$HOME/.bash_profile_hal-lab02"
fi
if [ $HOSTNAME = "cognitive0" ]; then
    . "$HOME/.bash_profile_cognitive0"
fi
if [ $HOSTNAME = "e7xeon3.hal.ipc.i.u-tokyo.ac.jp" ]; then
    . "$HOME/.bash_profile_e7xeon3"
fi
