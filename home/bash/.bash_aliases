##### Debug ##### 
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;41m\n\tbash_aliases start\e[0m'
fi 
##### End Debug ##### 



####################################################################################################
####### Dircolors settings  Note: 256 bit colors '0;0;0m' = 'foreground;background;txtcolor' 
###################################################################################################
# If on Mac OS X then alias ls to use GNU binutils
if [ $( uname ) == "Darwin" ]; then 
  alias grep='grep --color -E'
  alias dircolors='gdircolors'
  alias ls='gls --color=always -h'
  alias ll='gls --color=always -lh'
  alias l='gls --color=always -lAh'
  alias fgrep='fgrep --color=always '
  alias egrep='egrep --color=always '
else 
  alias grep='grep --color -E'
  alias ls='ls --color=always -h'
  alias ll='ls --color=always -lh'
  alias l='ls --color=always -lAh'
  alias fgrep='fgrep --color=always'
  alias egrep='egrep --color=always'
fi 

# If dircolors file exists then source it with dircolors
if [ -e "$HOME/.dircolors" ]; then
  eval $( dircolors ~/.dircolors )
fi


####################################################################################################
####### Useful Navigation Aliases
####################################################################################################
# Useful aliases
alias cd..="cd .."
alias c="clear"
alias e="exit"
alias ssh="ssh -X"
alias ..="cd .."
alias tree='tree -CA'
alias scat='pygmentize -g '

# hide/unhide folders from Finder
alias hide='chflags hidden '
alias unhide='chflags nohidden ' 

# shortcut to git directories
alias cs1='cd ~/Documents/Computer-Science-I'
alias cs2='cd ~/Documents/Computer-Science-II'
alias embedded='cd ~/Documents/Computer-Science-II'
alias em='cd ~/Documents/Embedded-System'

# Shortcut to folders
alias tmp='cd ~/.tmp'
alias dl='cd ~/Downloads'
alias doc='cd ~/Documents'
alias docs='cd ~/Documents'
alias curr='cd ~/Google\ Drive/Current\ Course\ Material'

export EDITOR=vim
alias crontab='VIM_CRONTAB=true ; crontab'

####################################################################################################
####### Development Tool Aliases
####################################################################################################
# msp430
alias gcc_msp='msp430-gcc -Os -Wall -g -mmcu=msp430g2452 '
alias mspdebug='mspdebug rf2500 '

####################################################################################################
####### Misc Aliases
####################################################################################################
alias feral='ssh -i ~/.ssh/id_rsa thrice43@thrice43.black.feralhosting.com'
alias koding='ssh vm-3.thrice43.koding.kd.io'
#alias vim='nvim '



####################################################################################################
# Bash Shell Settings
####################################################################################################
shopt -s nocasematch
shopt -s nocaseglob
shopt -s histappend
shopt -s cdspell
shopt -s dotglob
shopt -s autocd

####################################################################################################
# Disable/Enable Mac OS X Dashboard Widget stuff
####################################################################################################
function dashboard(){
  if [ $( defaults read com.apple.dashboard mcx-disabled ) -eq 0 ]; then 
    defaults write com.apple.dashboard mcx-disabled -boolean YES && killall Dock
    echo 'Dashboard Disabled' 
    # $( defaults read com.apple.dashboard mcx-disabled )
  else
    defaults write com.apple.dashboard mcx-disabled -boolean NO && killall Dock
    echo 'Dashboard Enabled' 
    # $( defaults read com.apple.dashboard mcx-disabled )
  fi
}

####################################################################################################
# Android Developer Stuff
####################################################################################################
function aDev( ){
  hdiutil attach /Volumes/Developer\ /android.dmg.sparseimage -mountpoint /Volumes/android; 
  cd /Volumes/android
  #export HOME="$PWD"
  #echo Home changed to "$PWD"
  export PATH="/Volumes/android/bin:/Volumes/android/workingDir/prebuilts/gcc/darwin-x86/arm/arm-eabi-4.6/bin:$PATH"
  cd /Volumes/android
}
function mountAndroid { 
  hdiutil attach /Volumes/Developer\ /android.dmg.sparseimage -mountpoint /Volumes/android; 
}

alias m24='msp430-gcc -Os -Wall -I/opt/local/msp430/include -g -mmcu=msp430g2452 -o  "$( echo $1 | sed 's/.c.*//g'  )".elf $1'
alias m25='msp430-gcc -Os -Wall -I/opt/local/msp430/include -g -mmcu=msp430g2553 -o  "$( echo $1 | sed 's/.c.*//g'  )".elf $1'

####################################################################################################
# MSP430 Developer Shortcuts
####################################################################################################
function m2452(){
  MCU="msp430g2452"
  s=$( echo $1 | sed 's/.c.*//g'  )
  msp430-gcc -Os -Wall  -g -mmcu=$MCU -o $s.elf $1
  sudo mspdebug rf2500 "prog $s.elf"
}
function m2452d(){
  MCU="msp430g2452"
  s=$( echo $1 | sed 's/.c//g'  )
  msp430-gcc -Os -Wall -I/opt/local/msp430/include -g -mmcu=$MCU -o $s.elf $1
  sudo mspdebug rf2500 
}

function m2553(){
  MCU="msp430g2553"
  s=$( echo $1 | sed 's/.c//g'  )
  msp430-gcc -Os -Wall -I/opt/local/msp430/include -g -mmcu=$MCU -o $s.elf $1
  sudo mspdebug rf2500 "prog $s.elf"
}
function m2553d(){
  MCU="msp430g2553"
  s=$( echo $1 | sed 's/.c//g'  )
  msp430-gcc -Os -Wall -I/opt/local/msp430/include -g -mmcu=$MCU -o $s.elf $1
  sudo mspdebug rf2500 
}
function mspASM(){
  MCU="msp430g2553"
  C_INCLUDE_PATH=/opt/local/msp430/include
  s=$( echo $1 | sed 's/.c//g'  )
  msp430-gcc -Os -Wall -I$C_INCLUDE_PATH -g -mmcu=$MCU -o $s.elf $1
}
function run(){
  gcc $1 && ./a.out ; rm a.out
}
function asm(){
  x=$1
  y=${x%.*}
  nasm -f macho $x
  ld -macosx_version_min 10.6 -o a.out -e main $y.o
  rm $y.o
}
# msp430-gcc -Os -mmcu=msp430x2012 -o main.elf main.c
# msp430-objcopy -O ihex main.elf main.hex # generate hex file
# mspdebug rf2500 "prog main.hex" # download to the launchpad
#
####################################################################################################
# BASH debug Stuff
###################################################################################################
if [[ "$bash_debug" == 'yes' ]]; then 
  printf '\e[38;5;41m\n\tbash_aliases end\n\e[0m'
fi 
