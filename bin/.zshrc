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

# Icebergテーマに変更
# export LS_COLORS="di=34:ln=35:so=32:pi=33:ex=31:bd=36;01:cd=33;01:su=31;40;07:sg=36;40;07:tw=32;40;07:ow=33;40;07:"
#if [ -n "$LS_COLORS" ]; then
#    zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
#fi

# zle
source ${HOME}/.zsh/zle.sh
# alias
source ${HOME}/.zsh/aliases.sh
# commands built on local
export PATH="${HOME}/local/bin:$PATH"
# linuxbrew
source ${HOME}/.zsh/linuxbrew.sh
# pyenv
source ${HOME}/.zsh/pyenv.sh
# perl
source ${HOME}/.zsh/perl.sh
# golang
source ${HOME}/.zsh/golang.sh
# rouge
source ${HOME}/.zsh/rouge.sh
# nvm
source ${HOME}/.nvm/nvm.sh


echo "May a force be with you."

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
