#Sudo aliases, necessary to understand other aliases within sudo
#alias s='sudo '
#alias sudo='sudo '

alias ls='ls -F --color=auto'

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# generic colourizer (GRC) aliases
GRC=$(command -v grc)
if [ "$TERM" != dumb ] && [ -n "$GRC" ] 
then
	alias colourify="$GRC -es --colour=auto"
    	alias configure='colourify ./configure'
    	alias diff='colourify diff'
    	alias make='colourify make'
    	alias gcc='colourify gcc'
    	alias g++='colourify g++'
    	alias as='colourify as'
    	alias gas='colourify gas'
    	alias ld='colourify ld'
#    	alias netstat='colourify netstat'
    	alias ping='colourify ping'
#    	alias traceroute='colourify /usr/sbin/traceroute'
fi

#Needed for old systems
alias ssh='TERM=xterm-256color ssh'
