# Android SDK home for MAven
export ANDROID_HOME=/home/sebastien/Code/Android/android-sdk

## Networking and server aliases
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

## Useful for current research
alias fzebulon='ssh fourquet@zebulon.iscpif.fr'
alias webquotes='cd ~/Code/Research/WebQuotes/main && workon treetagger'
alias naja='cd ~/Code/Web/naja && workon naja'
alias yelandur='cd ~/Code/Web/yelandur && workon yelandur'

## IPython aliases
# General PyLab IPython
alias ilab='ipython --pylab'
alias iqt-lab='ipython qtconsole --pylab=inline'
alias iqt-connect='ipython qtconsole --existing --pylab=inline'
alias inote-lab='ipython notebook --pylab=inline'
