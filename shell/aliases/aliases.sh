# directory aliases
# use like: ls ~src OR ~src OR du -h ~src
c=~/Code

alias fu='fresh update'

# Use color in grep
alias grep='grep --color=auto'

# ls
alias l="ls -lahF"
alias ll="ls -l"
alias la='ls -A'

# PostgreSQL
alias pg_start="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg_stop="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

alias muxbackup="cp -R ~/.tmuxinator/ ~/Dropbox/tmuxinator"
alias muxrestore="chmod 0755 ~/.tmuxinator/* && cp -R ~/Dropbox/tmuxinator/ ~/.tmuxinator"

# Misc
alias v=vim
alias x=exit
alias cl=clear
alias ee='eval $(cat .env)'
alias json="python -mjson.tool"
alias xml="xmllint --format -"
alias chime="afplay /System/Library/Sounds/Glass.aiff"

## Used in a blue moon
# tmux ssh agent forwarding hack
alias safix='export SSH_AUTH_SOCK=$(find /tmp/ssh-* -user $(whoami) -name agent\* 2>/dev/null |tail -1)'
alias tks="tmux kill-session"
sasw()  { export SSH_AUTH_SOCK=/tmp/ssh-agent-$1-screen }
saswa() { ln -nfs /tmp/ssh-agent-$1-screen /tmp/ssh-agent-$USER-screen }
