# ~/.zshrc

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

if [ -n "$WINDOWID" ]; then
TRANSPARENCY_HEX=$(printf 0x%x $((0xffffffff * 60 / 100)))
xprop -id "$WINDOWID" -f _NET_WM_WINDOW_OPACITY 32c -set _NET_WM_WINDOW_OPACITY "$TRANSPARENCY_HEX"
fi

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="ys"


plugins=(
	zsh-autosuggestions
	zsh-syntax-highlighting
	incr
    git z zsh-autosuggestions extract web-search zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# User configuration

alias mj="cd ~/fxy/"
alias .="cd ../"
alias ..="cd ../../"
alias ...="cd ../../../"
alias g="gvim"
alias nv="nvim"
alias c="clear"
alias h="history"
alias pdf="evince"
alias ff="firefox"

export CES64=TRUE

cd() { builtin cd "$@" && ls; }

export DVE_HOME=/home/synopsys/vcs/O-2018.09-SP2
export VCS_HOME=/home/synopsys/vcs/O-2018.09-SP2
export VCS_MX_HOME=/home/synopsys/vcs-mx/O-2018.09-SP2
export LD_LIBRARY_PATH=/home/synopsys/verdi/Verdi_O-2018.09-SP2/share/PLI/VCS/LINUX64
export VERDI_HOME=/home/synopsys/verdi/Verdi_O-2018.09-SP2
export SCL_HOME=/home/synopsys/scl/2018.06


#dve
PATH=$PATH:$VCS_HOME/gui/dve/bin
alias dve="dve"

#VCS
PATH=$PATH:$VCS_HOME/bin
alias vcs="vcs"

#VERDI
PATH=$PATH:$VERDI_HOME/bin
alias verdi="verdi"

#scl
PATH=$PATH:$SCL_HOME/linux64/bin
export VCS_ARCH_OVERRIDE=linux

#LICENCE
export LM_LICENSE_FILE=27000@centos7
alias lmg_synopsys="lmgrd -c /home/synopsys/scl/2018.06/admin/license/Synopsys.dat"

#zsh-autosuggestion颜色为白色的问题解决
export TERM=xterm-256color


export UPDATE_ZSH_DAYS=1

alias vim='~/.local/bin/vim'

alias python=python3
export PATH="/usr/bin:$PATH"

# Activate devtoolset-8
source /opt/rh/devtoolset-8/enable



alias envim="nv ~/.config/nvim/init.vim"

alias nplug="cd ~/.config/nvim/plugged"
