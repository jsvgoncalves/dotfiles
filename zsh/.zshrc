ZSH=$HOME/.oh-my-zsh
ZSH_THEME="robbyrussell"
COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git cake colorize colored-man-pages extract z
  fzf
  zsh-autosuggestions
  zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

bindkey '^ ' autosuggest-accept

## Path management
export PATH=$PATH:$HOME/bin:/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/var/www/lithium/libraries/lithium/console
export PATH=$PATH:/$HOME/n/scripts

## Development
export WORKON_HOME=~/.python-virtualenvs
export PROJECT_HOME=~/src
source /usr/bin/virtualenvwrapper.sh
export PATH="$HOME/lib/adt/sdk/tools/:$HOME/lib/adt/sdk/platform-tools/:$PATH"
export PATH="$PATH:$HOME/.local/bin/"
export PATH="$PATH:$HOME/.cargo/bin/"
export PATH="$PATH:$HOME/.istioctl/bin"
export EDITOR=nvim

# Themes
export GTK_THEME=Adwaita:dark
export TERM=screen-256color       # for a tmux -2 session (also for screen)
export TERMINAL=kitty

## Completions
eval "$(op completion zsh)"; compdef _op op

## Tmux
### For tmuxinator
export DISABLE_AUTO_TITLE=true

### Auto-start tmux
[[ -o login ]] && return # do not start tmux on login ttys
[[ -z "$TMUX" ]] && tmux -2
