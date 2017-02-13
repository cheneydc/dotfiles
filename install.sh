#!/bin/bash

HOME_DIR="~"

echo "Install oh-my-zsh..."
if [ -d $HOME_DIR/.oh-my-zsh ]; then
    echo "You already have Oh My Zsh installed. You'll need to remove $HOME_DIR/.oh-my-zsh if you want to reinstall"
    /bin/bash $HOME_DIR/.oh-my-zsh/tools/upgrade.sh
else
    echo "Installing Oh My Zsh..."
    wget http://github.com/cheneydc/oh-my-zsh/raw/master/tools/install.sh -O - | /bin/bash
fi

echo "Install oh-my-zsh extra plugins..."
apt-get install autojump


