#!/bin/bash


echo "Install zsh..."
sudo apt-get install -y zsh

echo "Install oh-my-zsh..."
if [ -d $HOME/.oh-my-zsh ]; then
    echo "You already have Oh My Zsh installed. You'll need to remove $HOME/.oh-my-zsh if you want to reinstall"
    /bin/bash $HOME/.oh-my-zsh/tools/upgrade.sh
else
    echo "Installing Oh My Zsh..."
    wget http://github.com/cheneydc/oh-my-zsh/raw/master/tools/install.sh -O - | /bin/bash
fi

echo "Install oh-my-zsh extra plugins..."
sudo apt-get install autojump

if [ -d $HOME/.cheneydc-dotfiles ]; then
    echo "Updatig cheneydc's dotfiles..."
    pushd $HOME/.cheneydc-dotfiles
    /usr/bin/env git pull
    popd
else
    echo "Cloning cheneydc's dotfiles..."
    pushd $HOME
    git clone git://github.com/cheneydc/dotfiles.git .cheneydc-dotfiles
    popd
fi

echo "Symlinking other dotfiles"
cp --backup=simple -v $HOME/.cheneydc-dotfiles/.* $HOME 
