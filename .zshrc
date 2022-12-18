export ZSH="/Users/tevans/.oh-my-zsh"

ZSH_THEME="avit"

plugins=(
  git
  docker
  github
  tmux
  kubectl
  zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh
alias vim="nvim"
alias vi="nvim"
alias docker="docker"
alias ls='ls -al --color=auto'
alias gs="git status"
alias gt="git tag -a"
alias ga="git add ."
alias gc="git commit -m \"CI\""
alias gp="git push"
alias gti="git"
alias gd="git diff HEAD"
alias gpom="git push origin master && git push origin --tags"
alias lg="git log --oneline --graph --color"
alias config='/usr/bin/git --git-dir=/Users/TEvans/.cfg/ --work-tree=/Users/TEvans'
alias tmux='TERM=screen-256color-bce tmux'
alias mux="tmuxinator"

# Tmuxinator
#source ~/.bin/tmuxinator.zsh

# Bookmark Helper
alias bm='cd $(cat ~/.config/bookmarks | fzf)'

export EDITOR=nvim

# FZF Setup
[ -z "$ZSH_NAME" ] && [ -f ~/.fzf.bash ] && source ~/.fzf.bash
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='rg --files --no-ignore --hidden --follow --glob "!node_modules/*" --glob "!.git/*"'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=5'

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
export PATH="$PATH:$HOME/go/bin"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$PATH:/usr/local/go/bin"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
