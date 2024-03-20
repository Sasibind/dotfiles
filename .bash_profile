#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
if [ "$(tty)" = "/dev/tty1" ]; then
	export QT_QPA_PLATFORM=wayland
	export MOZ_ENABLE_WAYLAND=1
	export MOZ_WEBRENDER=1
	export XDG_SESSION_TYPE=wayland
	export XDG_CURRENT_DESKTOP=sway
	exec sway
fi

