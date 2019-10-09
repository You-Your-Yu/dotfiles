#!/bin/bash

# install linux brew
# TODO: sudo is needed to execute the downloaded script
echo "setup linuxbrew..."
brew > /dev/null 2>&1
if [ $? -eq 127 ]; then
    echo "install lnuxbrew"
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
    echo 'export PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"' >> $CONF
    echo 'export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' >> $CONF
    echo 'export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> $CONF
    source $CONF
else
    echo "linuxbrew is already installed"
fi
