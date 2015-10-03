#################### 
##### Debug ######## 
#################### 
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;26m\nbashrc start\e[0m'
fi 
#################### 
##### End Debug ####
#################### 


# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines in the history. See bash(1) for more options
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
export HISTCONTROL=ignoreboth

# Append to the history file, don't overwrite it
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

force_color_prompt=yes

# if force_color_prompt is a string with length greather than zero
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        # We have color support; assume it's compliant with Ecma-48
        # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
        # a case would tend to support setf rather than setaf.)
        color_prompt=yes
    elif [ -x /opt/local/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes 
    else
        color_prompt=yes
    fi
fi

if [ "$color_prompt" = yes ]; then
	PS1="$PS1"
else
	PS1="$PS1"
fi


if [ $USER == 'root' ] ; then
	PS1="$PS1"
fi





# test -r /sw/bin/init.sh && . /sw/bin/init.sh



# Make sure python shell scripts will run ;) 
# export PYTHONSTARTUP="$HOME/.pyrc"

# VirtualEnv: Set if found in HOME
if [ -f "$HOME/.python/bin/activate" ]; then
    VIRTUAL_ENV_DISABLE_PROMPT=1
    . "$HOME/.python/bin/activate"
fi



#################### 
##### Debug ######## 
#################### 
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;26m\nbashrc end\e[0m'
fi 
##### End Debug ##### 

