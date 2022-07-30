export ZSH=~/.oh-my-zsh

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_COLOR_SUCCESS=white
SPACESHIP_CHAR_SYMBOL="→ "
SPACESHIP_GIT_BRANCH_PREFIX=""
SPACESHIP_GIT_STATUS_PREFIX=" "
SPACESHIP_GIT_STATUS_SUFFIX=""
SPACESHIP_GIT_STATUS_ADDED="%F{yellow}•%F{red}"
SPACESHIP_GIT_STATUS_UNTRACKED="%F{blue}•%F{red}"
SPACESHIP_GIT_STATUS_DELETED="%F{red}•%F{red}"
SPACESHIP_GIT_STATUS_MODIFIED="%F{green}•%F{green}"

plugins=(
    alias-finder
    git
    history-substring-search
    nvm
    z
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:/opt/homebrew/bin:$PATH"
