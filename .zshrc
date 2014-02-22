# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment to change how many often would you like to wait before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras git-flow git-hubflow pip mvn redis-cli virtualenvwrapper autojump command-not-found debian encode64 history-substring-search)

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# Local installations
export PATH="$HOME/.localroot/bin:$HOME/.local/bin:$PATH"
export LD_LIBRARY_PATH="$HOME/.localroot/lib:$HOME/.local/lib:$LD_LIBRARY_PATH"

# Moved this below PATH so that .localroot/bin is included
source $ZSH/oh-my-zsh.sh

# Source non-lazy virtualenvwrapper so that it works on first command
source "$(which virtualenvwrapper.sh)"

# Get aliases from .shell_aliases, shared with bash
if [ -f ~/.shell_aliases ]; then
    . ~/.shell_aliases
fi

# Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Prevent zsh from badly globbing bower
alias bower='noglob bower'
