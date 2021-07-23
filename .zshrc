if [[ $(tty) == /dev/tty1 && ! ${DISPLAY} ]]; then
	awk '{print $1}' /proc/uptime > /tmp/uptime
	exec startx & > /tmp/startx.log
fi

# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_hist
HISTSIZE=1000
SAVEHIST=1000
setopt autocd extendedglob
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gergoo007/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

PROMPT="%F{yellow}%n@%m:%~
%(?.%F{green}OK.%F{red}%?) %#%f "

alias la="ls -la"

function precmd() { 
	if [ -z "$NEW_LINE_BEFORE_PROMPT" ]; then
		NEW_LINE_BEFORE_PROMPT=1
	elif [ "$NEW_LINE_BEFORE_PROMPT" -eq 1 ]; then
		echo
	fi
}

mdir() {
	mkdir $1
	cd $1
}

alias clear="unset NEW_LINE_BEFORE_PROMPT && clear"
source /etc/locale.conf
export PATH=$PATH:~/.cargo/bin
alias ls="ls -la"

bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char
alias config='/usr/bin/git --git-dir=/home/gergoo007/.dotfilesrepo/ --work-tree=/home/gergoo007'
