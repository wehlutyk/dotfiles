# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Theme
set fish_theme fishy-drupal

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
# (We don't load autojump as a plugin since sourcing the file
# below is a lot more powerful.)
set fish_plugins git python tmux localhost

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

# Load autojump so that it tracks directories
. $HOME/.config/fish/autojump.fish

# Load virtualfish and its plugins
. $HOME/.config/fish/virtual.fish
. $HOME/.config/fish/auto_activation.fish
. $HOME/.config/fish/global_requirements.fish

## PATH
# Local installations
set PATH $HOME/.local/bin $PATH
set LD_LIBRARY_PATH $HOME/.local/lib $LD_LIBRARY_PATH

# Android SDK
set ANDROID_HOME /home/sl/Code/Android/android-sdk-linux
set PATH $PATH $ANDROID_HOME/tools $ANDROID_HOME/platform-tools $ANDROID_HOME/build-tools/21.1.0

# AVR32 toolchain
set PATH $PATH /home/sl/avr32/avr32-gnu-toolchain-linux_x86_64/bin

# Heroku Toolbelt
set PATH $PATH /usr/local/heroku/bin

# Packer
set PATH $PATH /opt/packer

## Start keychain
keychain --nogui id_rsa

## Start tmux
#if which tmux > /dev/null
  #not echo $TERM | grep -q screen; and test -z $TMUX; and exec tmux
#end
