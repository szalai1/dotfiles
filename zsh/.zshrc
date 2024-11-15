
plugins=(
    git
    kubectl
    macos
)

ZSH_THEME="robbyrussell"
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
export HISTTIMEFORMAT="%F %T"
if [ -f "$HOME/.workrc" ]; then
    source "$HOME/.workrc"
fi
alias tf="terraform"
alias gfc="git commit -am 'Automatic commit' && git push" # git fucking commit
alias da="direnv allow"
alias c="code ."
export USE_GKE_GCLOUD_AUTH_PLUGIN=False
export USE_GKE_GCLOUD_AUTH_PLUGIN=True
export PATH=$PATH:$HOME/.bin
export PATH=$PATH:$HOME/.bin/flutter/bin
[ -f ~/.workrc ] && source ~/.workrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(direnv hook zsh)"
#source <(kubectl completion zsh)

eval "$(/opt/homebrew/bin/brew shellenv)"
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/szalai1/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/szalai1/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/szalai1/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/szalai1/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
eval "$(direnv hook zsh)"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

