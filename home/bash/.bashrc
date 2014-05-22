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




# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi
if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi
if [ -r `brew --repository`/Library/Contributions/brew_bash_completion.sh ]; then
  source `brew --repository`/Library/Contributions/brew_bash_completion.sh
fi

# test -r /sw/bin/init.sh && . /sw/bin/init.sh



# Make sure python shell scripts will run ;) 
export PYTHONSTARTUP="$HOME/.pyrc"



#################### 
##### Debug ######## 
#################### 
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;26m\nbashrc end\e[0m'
fi 
##### End Debug ##### 

# ! Bash_profile is called next 
source "`brew --prefix grc`/etc/grc.bashrc"
#export PATH="$HOME/.rbenv/bin:$PATH"
#eval "$(rbenv init -)"
