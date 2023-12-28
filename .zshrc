#           _              
#          | |             
#   _______| |__  _ __ ___ 
#  |_  / __| '_ \| '__/ __|
# _ / /\__ \ | | | | | (__ 
#(_)___|___/_| |_|_|  \___|
#(runs whenever zsh starts up)

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd beep correct
unsetopt extendedglob

# Vim mode stuffs
bindkey -v
# Completion
zstyle :compinstall filename '~/.zshrc'
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)
# Use vim keys in completion menu
bindkey -M menuselect 'j' vi-backward-char
bindkey -M menuselect 'l' vi-up-line-or-history
bindkey -M menuselect ';' vi-forward-char
bindkey -M menuselect 'k' vi-down-line-or-history

# Put my scripts folder on PATH
export PATH=$PATH:$HOME/scripts
export PATH=$PATH:$HOME/.local/bin

# Make things pretty
PROMPT="%F{102}%? %F{red}%n%F{102}@%F{red}%M %F{102}%~ %# %f"
alias ls='ls --color=auto --group-directories-first'
alias grep='grep --color=auto'

# Make ls's colors readable on a dark background
LS_COLORS='rs=0:di=01;36:ln=01;35:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.pdf=00;32:*.ps=00;32:*.txt=00;32:*.patch=00;32:*.diff=00;32:*.log=00;32:*.tex=00;32:*.doc=00;32:*.aac=00;36:*.au=00;36:*.flac=00;36:*.m4a=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:';
export LS_COLORS

#Aliases
alias clh="cd ~; clear"
alias starwars="telnet towel.blinkenlights.nl"

#Show paleofetch & uname because why not
uname -a
echo ''

# You may set this to paleofetch_laptop or paleofetch_desktop if you are on a desktop or laptop running Arch. You may have issues with the battery displaying properly when on a laptop, if you do, recompile paleofetch (<repository root>/paleofetch/laptop)
paleofetch_server
#paleofetch_desktop
#paleofetch_laptop
# If you are not running Arch, just use neofetch
#neofetch

# Warn the user of different ls colors (I'll get confused otherwise lol)
CYAN='\033[01;36m'
MAGENTA='\033[01;35m'
YELLOW='\033[01;33m'
NOCOLOR='\033[0m'
echo -e "${YELLOW}WARNING: ${NOCOLOR}In ls, ${CYAN}directories ${NOCOLOR}are ${CYAN}this color, ${NOCOLOR}and ${MAGENTA}symlinks ${NOCOLOR}are ${MAGENTA}this color."

# I don't even remember what this is, something to do with Perl I think
PATH="/home/nacl10/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/nacl10/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/nacl10/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/nacl10/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/nacl10/perl5"; export PERL_MM_OPT;

# This MUST be at the end of this file (enabling zsh syntax highlighting)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
