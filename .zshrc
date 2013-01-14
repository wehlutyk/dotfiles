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
DISABLE_AUTO_UPDATE="true"

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
plugins=(git git-extras git-flow git-hubflow pip redis-cli virtualenvwrapper autojump command-not-found debian encode64 history-substring-search)

# Customize to your needs...
export PATH=/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games

# Local bin
export PATH="$HOME/.localroot/bin:$PATH"

# Moved this below PATH so that .localroot/bin is included
source $ZSH/oh-my-zsh.sh

# Source non-lazy virtualenvwrapper so that it works on first command
source "$(which virtualenvwrapper.sh)"

# Android SDK home for Maven
export ANDROID_HOME=/home/sebastien/Code/Android/android-sdk

# Networking and server aliases
alias lclipper='ssh lerique@clipper.ens.fr'
alias lproxy='ssh -N -T -L 3128:www-cache.ens.fr:3128 lerique@clipper.ens.fr'
alias smehho='ssh sl@mehho.net'
alias smehholoc='ssh sl@192.168.0.50'
alias amehho='ssh sebadmin@mehho.net'
alias amehholoc='ssh sebadmin@192.168.0.50'
alias swander='ssh -p2222 sl@wander.mehho.net'
alias swanderloc='ssh -p2222 sl@192.168.0.5'
alias awander='ssh -p2222 sebadmin@wander.mehho.net'
alias awanderloc='ssh -p2222 sebadmin@192.168.0.5'

# Useful for current research
alias fzebulon='ssh fourquet@zebulon.iscpif.fr'

# IPython aliases
alias ilab='ipython --pylab'
alias iqt-lab='ipython qtconsole --pylab=inline'
alias iqt-connect='ipython qtconsole --existing --pylab=inline'
alias inote-lab='ipython notebook --pylab=inline'
