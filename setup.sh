#! /bin/bash

for app in git macos tmux vim vscode zsh; do
    echo "Linking dotfile $app"
    stow $app
done

vim +'PlugInstall --sync' +qa
