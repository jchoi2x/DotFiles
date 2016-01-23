#!/usr/bin/env bash

##### Debug ##### 
#export bash_debug='yes'
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;37m\nbash_profile start\e[0m'
  if [ -z "$PS1" ]; then
    printf "\nNot running interactively"
  else
    printf "\nRunning interactively"
  fi

fi 
##### End Debug ##### 





# Enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -x "$( which brew )" ]; then
    if [ -f `brew --prefix`/etc/bash_completion ]; then
        . `brew --prefix`/etc/bash_completion
    fi

    if [ -r `brew --repository`/Library/Contributions/brew_bash_completion.sh ]; then
      source `brew --repository`/Library/Contributions/brew_bash_completion.sh
    fi

    GRC=$( brew --prefix grc  )
    if [[ $? == 0 ]]; then
        if [ -d "$GRC" ]; then
            source $GRC/etc/grc.bashrc
        fi
    fi
fi

if [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
fi

if [ -f /opt/local/etc/profile.d/bash_completion.sh ]; then
    . /opt/local/etc/profile.d/bash_completion.sh
fi



# If not running interactively, don't do anything
# if length (-z) of "$PS1" is zero
[ -z "$PS1" ] && return




# don't put duplicate lines in the history. See bash(1) for more options
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups
# don't overwrite GNU Midnight Commander's setting of `ignorespace'.
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


# Set default TERM
export TERM=xterm-256color

# Set default cscope editor 
export CSCOPE_EDITOR=vim

# Set bash prompt style colors
export PS1='[\[\e[38;5;26m\]\A\[\e[0m\]] \[\e[38;5;241m\]\u\[\e[0m\] \[\e[38;5;24m\]\w\[\e[0m\] \$ '

























#################################################################################
####### Add to path Runtime Environments
#################################################################################

# ruby version manager if exists
if [ -d "$HOME/.rvm/bin" ]; then
    export PATH="$HOME/.rvm/bin:$PATH" # Add RVM to PATH for scripting
    # If rvm script exists, load RVM into a shell session *as a function*
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" 
elif [ -d "$HOME/.rbenv/bin" ]; then
    # otherwise try rubyenv
    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"
else
    export PATH=$PATH
fi


# rbenv
#if [ -d "$HOME/.rbenv/bin" ]; then
#    export PATH="$HOME/.rbenv/bin:$PATH"
#    eval "$(rbenv init -)"
#fi

# nodeenv: Set if found in HOME
if [ -f "$HOME/.node/bin/activate" ]; then
    NODE_VIRTUAL_ENV_DISABLE_PROMPT=1
    . "$HOME/.node/bin/activate"
fi

# virtualenv: Set if found in HOME
if [ -f "$HOME/.python/bin/activate" ]; then
    VIRTUAL_ENV_DISABLE_PROMPT=1
    . "$HOME/.python/bin/activate"
fi



# bin folder in home directory
if [ -d "$HOME/.bin" ]; then
    export PATH="$HOME/.bin:$PATH"
fi



# cross-compilers: Set if found in directory
if [ -d "/usr/local/linaro/arm-linux-gnueabihf/bin" ]; then
    export PATH="$PATH:/usr/local/linaro/arm-linux-gnueabihf/bin"
    export CROSS_COMPILE="arm-linux-gnueabihf-"
fi


#if [ -d "/usr/local/opt/coreutils/libexec/gnubin" ]; then
#    export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
#    export MANPATH="/usr/local/opt/coreutils/libexec/gnuman:/usr/share/man:/usr/local/share/man:$MANPATH"
#fi


















#################################################################################
####### Source other rc files and include paths
#################################################################################
# only source bashrc and bash_aliases if login shell
if [ ${0:0:1} == '-'  ] ; then 
    if [ -f "$HOME/.bashrc" ]; then 
        ##### Debug ##### 
        if [[ "$bash_debug" == 'yes' ]]; then 
            printf '\e[38;5;37m\nsourcing bashrc.. \e[0m'
        fi 
        source "$HOME/.bashrc"
    fi

    if [ -f "$HOME/.bash_aliases" ] ; then
      ##### Debug ##### 
      if [[ "$bash_debug" == 'yes' ]]; then 
        printf '\e[38;5;37m\nsourcing bash_aliases.. \e[0m'
      fi 
      ##### End Debug ##### 
      source "$HOME/.bash_aliases"
    fi
fi




##### Debug ##### 
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;37m\nbash_profile end\e[0m\n'
fi 
##### End Debug ##### 



