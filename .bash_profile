#
if [ -z "$PS1" ]; then
   return
fi

# welcome message
echo "

          ___           ___           ___           ___            
         /\  \         /\  \         /\  \         /\__\          
         \8\  \       /88\  \       /88\  \       /8/  /          
          \8\  \     /8/\8\  \     /8/\8\  \     /8/__/           
      ___  \8\  \   /88\~\8\  \   /8/  \8\  \   /88\__\____       
     /\  \ /88\__\ /8/\8\ \8\__\ /8/__/ \8\__\ /8/\88888\__|      
     \8\  /8/\/__/ \/__\8\/8/  / \8\  \  \/__/ \/_|8|~~|~         
      \8\/8/  /         \88/  /   \8\  \          |8|  |          
       \88/  /          /8/  /     \8\  \         |8|  |          
        \/__/          /8/  /       \8\__\        |8|  |          
                       \/__/         \/__/         \|__|          
                  

"

PS1='\[\e[3m\]\u\[\e[0m\] \[\e[3m\]@\[\e[0m\] \[\e[91;1;3m\]\w\[\e[0m\] \[\e[5m\]>\[\e[0m\] '

# Make bash check its window size after a process completes
shopt -s checkwinsize

[ -r "/etc/bashrc_$TERM_PROGRAM" ] && . "/etc/bashrc_$TERM_PROGRAM"

### aliases
alias c='codium'
# alias c='code'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
   # linux
   true
elif [[ "$OSTYPE" == "darwin"* ]]; then
   # macos
   export PATH="/opt/homebrew/bin:$PATH"
elif [[ "$OSTYPE" == "msys" ]]; then
   # windows
   true
