#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export PATH=$PATH:/home/consigliere/.spicetify

# Asegura que ~/.bashrc se cargue siempre en sesiones interactivas.
if [ -f ~/.bashrc ]; then
  . ~/.bashrc
fi
