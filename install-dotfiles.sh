BASH_CONF_URL="https://raw.githubusercontent.com/jamesrivett/dotfiles/master/.bash_aliases"
BASH_CONF_TARGET=$HOME/.bash_aliases

TMUX_CONF_URL="https://raw.githubusercontent.com/jamesrivett/dotfiles/master/.tmux.conf"
TMUX_CONF_TARGET=$HOME/.tmux.conf

VIM_CONF_URL="https://raw.githubusercontent.com/jamesrivett/dotfiles/master/.vimrc"
VIM_CONF_TARGET=$HOME/.vimrc

curl -L $BASH_CONF_URL > $BASH_CONF_TARGET && source $BASH_CONF_TARGET
curl -L $BASH_CONF_URL | source
curl -L $TMUX_CONF_URL > $TMUX_CONF_TARGET && tmux source-file $TMUX_CONF_TARGET
curl -L $VIM_CONF_URL > $VIM_CONF_TARGET

