# System-wide .bashrc file for interactive bash(1) shells.
if [ -z "$PS1" ]; then
   return
fi

PS1='\[\e[3m\]\u\[\e[0m\] \[\e[3m\]@\[\e[0m\] \[\e[91;1;3m\]\w\[\e[0m\] \[\e[5m\]>\[\e[0m\] '

# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

# jack's aliases
alias c='codium'
alias ..='cd ..'
alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"

