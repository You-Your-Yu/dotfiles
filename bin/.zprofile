
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/Yu/google-cloud-sdk/path.bash.inc' ]; then source '/Users/Yu/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/Yu/google-cloud-sdk/completion.bash.inc' ]; then source '/Users/Yu/google-cloud-sdk/completion.bash.inc'; fi
# pyenvさんに~/.pyenvではなく、/usr/loca/var/pyenvを使うようにお願いする
export PYENV_ROOT=/usr/local/var/pyenv

# pyenvさんに自動補完機能を提供してもらう
if which pyenv > /dev/null; then eval "$(pyenv init -)"; fi

# prezto
source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
