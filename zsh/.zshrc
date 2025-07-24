
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
source <(fzf --zsh)
# bash history settings
HISTSIZE=10000000
SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_FIND_NO_DUPS         # Do not display a line previously found.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_VERIFY               # Don't execute immediately upon history expansion.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

[ -f ~/.workrc ] && source ~/.workrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
eval "$(direnv hook zsh)"
#source <(kubectl completion zsh)

eval "$(/opt/homebrew/bin/brew shellenv)"
eval "$(direnv hook zsh)"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/szalaipeter/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/szalaipeter/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/szalaipeter/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/szalaipeter/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
