#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# some aliases for use
alias ls='ls --color=always'
alias grep='grep --color=auto'
alias dafny='~/.vscode-oss/extensions/dafny-lang.ide-vscode-3.3.0/out/resources/4.6.0/github/dafny/dafny'

# adding editor variable
export $EDITOR  vim

# wayland copy terminal output
wlc() {
	cat "$1" | wl-copy
}

# Define colors
glow_color="\[\033[38;2;254;207;153m\]"   # Custom glow color
red_color="\[\033[38;2;223;110;129m\]"    # Custom red color
reset_color="\[\033[0m\]"                 # Reset color

# Modify PS1
PS1="${glow_color}\u${reset_color}@${red_color}\h ${reset_color}in ${glow_color}\W\n⤷ ${red_color}\$ ${reset_color}"
export PATH=$HOME/.npm-global/bin:$PATH
export PATH="$HOME/flutter/bin:$PATH"
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$ANDROID_HOME/cmdline-tools/latest/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/emulator:$PATH

