#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=always'
alias grep='grep --color=auto'
# Define colors
glow_color="\[\033[38;2;254;207;153m\]"   # Custom glow color
red_color="\[\033[38;2;223;110;129m\]"     # Custom red color
reset_color="\[\033[0m\]"                   # Reset color

# Modify PS1
PS1="${glow_color}\u${reset_color}@${red_color}\h ${reset_color}in ${glow_color}\W\n⤷ ${red_color}\$ ${reset_color}"
