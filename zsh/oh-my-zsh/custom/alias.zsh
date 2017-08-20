# Author: Joao Goncalves
# Path: ~/.oh-my-zsh/custom/

# Tree levels and colorized
alias t='tree -C -L 1'
alias t1='tree -C -L 1'
alias t2='tree -C -L 2'
alias t3='tree -C -L 3'
alias t4='tree -C -L 4'

# Rails stuff
alias rs='rails server'
alias rdb='rake db:migrate'
alias rdbc='rake db:drop:all'

# Nautilus
alias here='nautilus .'

# apt-get or dnf install
alias i='sudo apt-get install -y'
alias ii='sudo dnf install -y'
alias ia='sudo pacman -Syu'

# clear

alias c='clear'

# urxvt solarized

alias sdark='xrdb $HOME/.Xresources; xrdb -merge $HOME/.Xsolarized_dark'
alias slight='xrdb $HOME/.Xresources; xrdb -merge $HOME/.Xsolarized_light'
