#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

export PATH=$PATH:/home/consigliere/.spicetify
export PATH=$PATH:/home/consigliere/.cargo/bin
#export PATH="#HOME/.cargo/bin:#PATH"

# Asegúrate de que esta línea esté al final y que la anterior PS1='...' se haya eliminado o comentado:
eval "$(oh-my-posh init "$(basename $SHELL)" --config ~/.poshthemes/catppuccin.omp.json)"
