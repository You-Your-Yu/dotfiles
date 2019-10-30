# git
alias g='git'
alias gst='git status'
alias ga='git add'
alias gcm='git commit -m'
alias gp='git push'
alias gpl='git pull'
alias gd='git diff'
# tmux
alias ta='tmux a'
alias tat='tmux a -t'
alias tls='tmux ls'

# gpu
alias ns='nvidia-smi'

alias proxy='sh ~/.zsh/proxy.sh'

# fujiso-san configuration↲
alias gpu='watch -n1 "hostname; nvidia-smi pmon -s um -c 1"'↲
alias imux='tmux attach || tmux new-session \; source-file ~/.tmux/imux'

# my commands
alias tokenize='sed -e "s/ /_/g" | sed -E "s/(.)/\1 /g" | sed -e "s/ $//g"'
alias tk='tokenize'
alias detokenize='sed -e "s/ //g" | sed -e "s/_/ /g"'
alias dtk='detokenize'
