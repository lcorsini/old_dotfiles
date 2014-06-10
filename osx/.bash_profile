if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
  fi

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

PS1="\[\e[01;30m\]\u@\h\[\e[00;37m\]:\[\e[00;91m\]\w\[\e[0m\] \$ "
CLICOLOR=1
#zenburn
DIR=Dx
SYM_LINK=dx
SOCKET=Fx
PIPE=dx
EXE=cx
BLOCK_SP=Dx
CHAR_SP=Dx
EXE_SUID=hb
EXE_GUID=ad
DIR_STICKY=Ex
DIR_WO_STICKY=Ex

LSCOLORS="$DIR$SYM_LINK$SOCKET$PIPE$EXE$BLOCK_SP$CHAR_SP$EXE_SUID$EXE_GUID$DIR_STICKY$DIR_WO_STICKY"

export PS1 CLICOLOR LSCOLORS
