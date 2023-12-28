#                    __ _ _      
#                   / _(_) |     
#   _ __  _ __ ___ | |_ _| | ___ 
#  | '_ \| '__/ _ \|  _| | |/ _ \
# _| |_) | | | (_) | | | | |  __/
#(_) .__/|_|  \___/|_| |_|_|\___|
#  | |                           
#  |_|  
#         (runs on login)

# Set XDG dirs
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_CACHE_HOME="$HOME"/.cache
export XDG_DATA_HOME="$HOME"/.local/share

#Tell things to put stuff in XDG dirs
export GNUPGHOME="$XDG_CONFIG_HOME"/gnupg
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export NPM_CONFIG_USERCONFIG=$XDG_CONFIG_HOME/npm/npmrc
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export VIMINIT=":source $XDG_CONFIG_HOME"/vim/vimrc
export LESSKEY="$XDG_CONFIG_HOME"/less/lesskey
export LESSHISTFILE="$XDG_CACHE_HOME"/less/history
export WGETRC="$XDG_CONFIG_HOME/wgetrc"
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export XSERVERRC="$XDG_CONFIG_HOME"/X11/xserverrc
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'

# Set default apps and such
export EDITOR="nvim"
export TERMINAL="konsole"
export BROWSER="firefox"

# This line will run your xinitrc if you log in on TTY1 and X11 is not already running
# Only uncomment it if you need this functionality
#[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx "$XDG_CONFIG_HOME/X11/xinitrc" vt1
