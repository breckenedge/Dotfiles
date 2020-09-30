# Get the current branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

# Fancier prompt
setopt PROMPT_SUBST
PROMPT='%F{green}%~%f%F{red}$(parse_git_branch)%f %# '

alias stop-containers="docker ps -q | xargs docker stop"

# Aliases
alias a="ag --width 120"
alias e="vim"
alias g='git'

# Enable zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath)

# Enable zsh-autosuggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

# Make ctrl-space accept the zsh-autosuggestions suggestion
bindkey '^ ' autosuggest-accept

