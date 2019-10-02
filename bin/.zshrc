#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
# aliasを読み込む
source ${HOME}/.aliases
# nvmのパスを通す
source ~/.nvm/nvm.sh
# Icebergテーマに変更
# export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:"

#if [ -n "$LS_COLORS" ]; then
#    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#fi

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# local jumanpp
export PATH="${HOME}/local/bin:$PATH"

# fujiso-san configuration
alias gpu='watch -n1 "hostname; nvidia-smi pmon -s um -c 1"'
alias imux='tmux attach || tmux new-session \; source-file ~/.tmux/imux'

# Ctrl+s/q
setopt no_flow_control
