#! /bin/bash

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
for app in git macos tmux vim vscode zsh; do
    echo "Linking dotfile $app"
    stow $app
done

vim +'PlugInstall --sync' +qa
bash ~/.macos
launchctl unload -w /System/Library/LaunchAgents/com.apple.rcd.plist
