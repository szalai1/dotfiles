ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh

plugins=(
    git
    kubectl
    macos
)

if [ -f "$HOME/.workrc" ]; then
    source "$HOME/.workrc"
fi

export PATH=$PATH:$HOME/.bin

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/Users/peterszalai/.sdkman"
[[ -s "/Users/peterszalai/.sdkman/bin/sdkman-init.sh" ]] && source "/Users/peterszalai/.sdkman/bin/sdkman-init.sh"

export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/Downloads/flutter/bin
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv init -)"
export KYBER_CONFIG_PATH=~/.kyber-config.json

# Created by `pipx` on 2022-02-22 11:55:17
export PATH="$PATH:/Users/peterszalai/.local/bin"
alias aws-login="aws-google-auth -I C03163stn -S 533705401937 -R eu-west-1 -d 28800 --resolve-aliases --username peter.szalai@askattest.com --profile sso --ask-role"; export AWS_PROFILE=sso
alias docker="podman"
