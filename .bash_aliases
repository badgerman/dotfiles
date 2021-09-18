PS1='\[\033]0;\u@\h: \w\007\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(__git_ps1 '@%s')\$ '
#alias sudo='sudo -E'
alias ta='tmux attach || tmux'
alias ..='cd ..'
alias ll='ls -l'
alias dir='ls --color=auto -lAh'
#umask 0077

PATH=/sbin:$PATH
[ -d /usr/lib/mutt/ ] && PATH=/usr/lib/mutt/:$PATH
[ -d /opt/bin/ ] && PATH=/opt/bin/:$PATH
[ -d $HOME/bin/ ] && PATH=$HOME/bin/:$PATH
if [ -d ~/eressea ]; then
  alias e2='cd ~/eressea/game-2'
  alias e3='cd ~/eressea/game-3'
  alias e4='cd ~/eressea/game-4'
  alias eg='cd ~/eressea/git'
fi

if [ -d ~/.luarocks ]; then
  eval `luarocks path`
fi
export LUA_PATH="$LUA_PATH;./?/init.lua"

for source in \
/etc/bash_completion.d/git \
/etc/bash_completion.d/git-prompt
do
  [ -e $source ] && . $source && break
done
PS1='\[\033]0;\u@\h: \w\007\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;36m\]\w\[\033[00m\]$(__git_ps1 '@%s')\$ '
[ -d ~/.config/composer/vendor/bin ] && \
  export PATH="$HOME/.config/composer/vendor/bin:$PATH"
export LESS="IFRSXx4"
export EDITOR=vim
export VISUAL=vim
export NCURSES_NO_UTF8_ACS=1
if [ -d ~/eressea ]; then
  export ERESSEA_DIR=$HOME/eressea/git
fi

