
set -o vi
PS1='\[\033[01;31m\]\u@\h.....\w\n\[\033[01;34m\]\! > \[\033[00m\]'
export HISTIGNORE="&:ls:ll:l:lt:la:h:pwd:exit:pss:history*:h *"
export HISTCONTROL=ignoredups:erasedups:ignorespace

PROMPT_COMMAND="history -a;$PROMPT_COMMAND"

alias ls='ls -F --color=auto'
alias l='ls -h'
alias lt='ls -lAtr'
alias ll='ls -Al'
alias ..='cd ..'
alias ...='cd ../..'
alias duh='du -h --max-depth=1'
alias d='df -h'
alias h='history'
alias listen='sudo lsof -i -P | grep -i "listen"'
alias ports='sudo lsof -i -P -n'
alias pss='ps -ef --sort=start_time'
alias ver='lsb_release -a'
alias web='cd /var/www/html'
alias myip='curl ifconfig.co'
alias info='cat /home/andy/unix_notes.txt'
alias redo='sudo $(history -p !!)'
