# Get the current branch name
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ \1/'
}

# Fancier prompt
setopt PROMPT_SUBST
PROMPT='%F{green}%~%f%F{red}$(parse_git_branch)%f %# '

# Aliases
alias ag="rg"

alias e="vim"

alias g="git"
alias gb="git for-each-ref --sort=committerdate refs/heads/ --format='%(committerdate:short) %(refname:short)'"
alias gca="git commit --amend"
alias gd="git branch -d"
alias gD="git branch -D"
alias gf="git fetch"
alias gfa="git fetch --all"
alias gp="git push"
alias gpf="git push --force-with-lease"
alias gs="git status"

# Make ctrl-space accept the zsh-autosuggestions suggestion
bindkey '^ ' autosuggest-accept

# Launch VS Code via `code` command
code () {
  VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $*;
}

eval "$(rbenv init -)"

export PATH="/Users/aaron/.bin:$PATH"
