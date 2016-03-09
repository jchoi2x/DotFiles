{ print RSTART }
END { print "Num:", n }
' 
airport -s | awk '
BEGIN { if (match("$1", /[0-9]{2}:/)){ ++n }

END

'
airport -s | awk '
BEGIN { if (match("$1", /[0-9]{2}:/)){ ++n }

END'
airport -s | awk '
BEGIN { if (match("$1", /[0-9]{2}:/)){ ++n }'
airport -s | awk '
BEGIN { if (match(\"$1\", /[0-9]{2}:/)){ ++n }'
airport -s | awk '
BEGIN { if (match("$1", /[0-9]{2}:/)){ ++n }'
airport -s | awk '
if (match("$1", /[0-9]{2}:/)){ print $1 }'
airport -s | awk '
if (match("$1", /[0-9]{2}:/)){ print "$1" }'
airport -s | awk '
{ if (match("$1", /[0-9]{2}:/)){ print "$1" } }'
airport -s | awk '
{ if (match("$1", /[0-9]{2}:/)){ print $1 } }'
airport -s | awk '
{ if (match($1, /[0-9]{2}:/)){ print $1 } }'
airport -s | awk '
{ if (match("9C:", /[0-9a-zA-Z]{2}:/)){ print $1 } }'
airport -s | awk '
{ if (match($1, /[0-9a-zA-Z]{2}:/)){ print $1 } }'
airport -s | awk '
{ if (match($1, /[0-9a-zA-Z]{2}/)){ print $1 } }'
airport -s | awk '
{ if (match($1, /[0-9a-zA-Z]{2}/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /[0-9a-zA-Z]{2}:/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /[.]{2}:/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /.{2}:/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /[:print:]{}:/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /[A-Za-z0-9]/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /[A-Za-z0-9]:/)){ print RSTART } }'
airport -s | awk '
{ if (match($1, /[A-Za-z0-9]\:/)){ print RSTART } }'
airport -s | grep -ie /[A-Za-z0-9]/
airport -s | grep -ie '[A-Za-z0-9]'
airport -s | grep -ie '[A-Za-z0-9]:'
airport -s | grep -ie '[A-Za-z0-9]{2}:'
airport -s | grep -ie '([A-Za-z0-9]{2}:){5}'

airport -s | awk '
{ /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/ { print $1 }'
airport -s | awk '
 /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/ { print $1 }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($1, regex)){ print $1 }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($1, regex)){ print $1 }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($1, regex)){ print $1 }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ print RSTART }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ print sub(\*\*, " ") }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ x = sub(\*\*, " ") ; print x}}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){  split($0, a, regex, seps }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){  split($0, a, regex, seps) }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){  split($0, a, /0/, seps) } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){  }
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){  } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, ":", sep)  } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, "\:", sep)  } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, "9c", sep)  } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, \"9c\", sep)  } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, sep)  } }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, sep)  } 
{ print a }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, sep)  } 
{ print a }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, sep)  } 
{ print a[0] }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{ if(match($0, regex)){ split($0, a, sep)  } 
{ print a[1] }}'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, sep)  } 
{ print a }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, sep)  } 
{ print a[0] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, " ", sep)  } 
{ print a[0] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, \" \", sep)  } 
{ print a[0] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, "\ ", sep)  } 
{ print a[0] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, " ")  } 
{ print a[0] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, " ")  } 
{ print a[1] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, " ")  } 
{ print a[2] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, regex)  } 
{ print a[2] }'
airport -s | awk '
 BEGIN { regex = /([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/}
{split($0, a, regex)  } 
{ print a[1] }'
airport -s | sed 's/^[^(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})]//'
airport -s | grep '([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}'
airport -s | cut -d'([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}'
airport -s | cut -d/([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}/
echo "US/Central - 10:26 PM (CST)" | grep -oP "\-\s+\K\d{2}:\d{2}"
echo "US/Central - 10:26 PM (CST)" | grep -oE '[0-9]{2}
'
echo "US/Central - 10:26 PM (CST)" | grep -oE '[0-9]{2}'
airport -s | grep -oE '([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}'
airport -s | grep -oE '*(?=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | grep -oE '(?=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | grep -oE '(?=(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
airport -s | grep -oE '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | grep  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | grep  '?=(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
airport -s | grep  '?=(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | grep  '\w+(?=(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
airport -s | grep  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
airport -s | grep -o  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
brew tap homebrew/dupes; brew install grep
brew info grep
brew install grep --with-default-names
grep -
grep -P
grep --help
echo $GREP_OPTIONS 
/usr/bin/grep 
/usr/bin/grep --help
man grep 2
man grep 1
man
man man
man grep(1)
man 1 grep
man -k grep
brew uninstall grep
brew install grep 
ggrep 
ggrep --help
man ggrep
man grep
airport -s | grep  '(?=(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
which grep
grep
spoof-mac en0 fc:c2:de:74:45:ce 
spoof-mac set en0 fc:c2:de:74:45:ce 
sudo spoof-mac set  fc:c2:de:74:45:ce  en0
cd
cd .bin
ls
cat listwifi.py
spoof-mac list --wifi
spoof-mac set  fc:c2:de:74:45:ce  en0
airport 
networksetup -setairportnetwork en0 GUEST
networksetup -setairportnetwork en0 NSU
airport -s | tail -n 
airport -s | tail -n1
airport -s | tail -n1 | awk `{print $2}'
airport -s | tail -n1 | awk '{print $2}'
airport -s | head -n1 | awk '{print $2}'
airport -s | head -n+1 | awk '{print $2}'
airport -s | tail -n+1 | awk '{print $2}'
feral
vim ~/.bashrc
vim /Users/kizzlebot/.bash_aliases 
grep
cat ~/.bashrc | grep 'GREP_OPTIONS'
bpython
vim listwifi.py
echo api_keyf74ad94585be959288a43cfbfc18c0e8methodauth.getSessiontoken262dff1fc42b5cd9ade56a3455d2d78f
echo $LASTFM_KEY 
echo api_keyf74ad94585be959288a43cfbfc18c0e8methodauth.getSessiontoken262dff1fc42b5cd9ade56a3455d2d78f | md5 | pbcopy
echo api_keyf74ad94585be959288a43cfbfc18c0e8methodauth.getSessiontoken262dff1fc42b5cd9ade56a3455d2d78f | md5
echo api_keyf74ad94585be959288a43cfbfc18c0e8methodauth.getSessiontokenaa28dcc83c9bd784757347b78a48cb03 | md5 | pbcopy
echo api_keyxxxxxxxxmethodauth.getSessiontokenxxxxxxxmysecret
echo api_keyxxxxxxxxmethodauth.getSessiontokenxxxxxxx$LASTFM_KEY
npm start
cd test/
touch t.js
nesh
npm install xml2js
npm install xml2js --save
node t.js 
vim t.js 
gist --help
gist --list
vim ~/.irbrc
vim /Users/kizzlebot/.irbrc 
irb
ls .env
cat .env
cat .env| less
mongod --version
heroku login
vim /Users/kizzlebot/.bashrc 
vim /Users/kizzlebot/.bash_profile 
ls /etc/paths.d/
cat /etc/paths
echo $PATH
which heroku
ls -la /usr/local/bin/heroku 
heroku create
heroku apps
heroku addons:create mongolab
heroku help create 
heroku apps:create devmusic
heroku 
heroku addons
heroku help addons
git remote list show
git remote  show
git remote set-url heroku https://git.heroku.com/devmusic.git
git push heroku master 
vim .env
mv dist/DefaultTrackers-0.1-py2.7.egg  ~/Downloads/
mv 'Let The Winds Blow Phantasy Star Online episode III C.A.R.D. Revolution Original Sound Track [FLAC] (2003) [320].torrent' "Let The Winds Blow (2003) [320].torrent"
mv 'Let The Winds Blow Phantasy Star Online episode III C.A.R.D. Revolution Original Sound Track [FLAC] (2003) [V2].torrent' 'Let The Winds Blow (2003) [V2].torrent' lcc3.9.3.zip'
mv 'Let The Winds Blow Phantasy Star Online episode III C.A.R.D. Revolution Original Sound Track [FLAC] (2003) [V2].torrent' 'Let The Winds Blow (2003) [V2].torrent' 
fdl
ping google.com
dl
rm *.torrent
ls *.egg
rm *.egg
rm ./LCC\ Installer.app/
rm -r ./LCC\ Installer.app/
rm lcc3.9.3.zip 
rm Angry\ IP\ Scanner.app/
rm -r Angry\ IP\ Scanner.app/
rm -r Wireshark\ 2.0.1\ Intel\ 64.dmg digilent.waveforms_v3.2.6.dmg jre-8u73-macosx-x64.dmg ipscan-mac-3.4.1.zip 
rm -r en_windows_10_multiple_editions_version_1511_x64_dvd_7223712.iso 
rm Resume.pdf Lab2.docx Lab2.pdf Tunnelblick_3.5.7_build_4270.4517.dmg emacs.icns internshipResume.pdf prey-mac-1.5.0-x86.pkg unifying1.10.421.dmg 
./radio 
cat HARDWARE-INFO.md 
which ruby
gem install whatcd
gem install bond
gist --help
gist --list
vim ~/.irbrc
vim /Users/kizzlebot/.irbrc 
irb
mongod --dbpath ~/.mongo
mongod --dbpath ~/.mongo --help
mongod --dbpath ~/.mongo --help | less
mongod --dbpath ~/.mongo -vvvvv
mongo ds023448.mlab.com:23448/kizzlebase -u kizzlebot -p tree444
vim .env.example 
source ~/.bashrc
npm start
git commit -m'removed sensitive keys'
git push 
rm npm-debug.log 
cat .env.example 
cat .env.example  | less
cat .env
cat .env | less
vim ~/.bashrc
git commit -m'remove twitter key
'
git push origin master 
git status
vim .env
git add .
git commit -m'removed instagram key
'
git push origin master
git push heroku master 
vim
pbpaste | md5
pbpaste | md5 |pbcopy
vim test/t.js 
node test/t.js 
gpg --gen-key
fing
ifconfig
ifconfig en0
ping C0:18:85:03:C7:F7
ping 192.168.2.9
ssh 192.168.2.9
ssh 192.168.2.8
ssh root@192.168.2.8
echo $LASTFM_KEY 
echo $LASTFM_KEY |pbcopy
ifconfig en0
sudo spoof reset en0
ping antiphates.feralhosting.com
ls ~/Library/Application\ Support/Textual/
cat ~/Library/Application\ Support/Textual/Textual_Trial_Information.plist 
rm -r  ~/Library/Application\ Support/Textual/
sudo rm -r  ~/Library/Application\ Support/Textual/

mount
ls /Volumes/Textual\ 5.2.9\ by\ Macbed.com/Textual.app/Contents/MacOS/
hexdump /Volumes/Textual\ 5.2.9\ by\ Macbed.com/Textual.app/Contents/MacOS/Textual 
hexdump -C /Volumes/Textual\ 5.2.9\ by\ Macbed.com/Textual.app/Contents/MacOS/Textual 
hexdump -C /Volumes/Textual\ 5.2.9\ by\ Macbed.com/Textual.app/Contents/MacOS/Textual  | less
hexdump -C /Volumes/Textual\ 5.2.9\ by\ Macbed.com/Textual.app/Contents/MacOS/Textual  
mtp
tpm
tmp
hexdump -C /Volumes/Textual\ 5.2.9\ by\ Macbed.com/Textual.app/Contents/MacOS/Textual  > ./cracked.txt
hexdump -C /Volumes/Textual\ 5/Textual.app/Contents/MacOS/Textual > ./clean.txt
diff clean.txt cracked.txt 
diff --side-by-side clean.txt cracked.txt 
diff --side-by-side clean.txt cracked.txt |less
feral
history 
pip install SpoofMAC
cd /Library/LaunchDaemons/
cat com.prey.agent.plist 
curl https://raw.githubusercontent.com/feross/SpoofMAC/master/misc/local.macspoof.plist > ./local.macspoof.plist
sudo su
cd Documents/
vim /etc/hosts
sudo vim /etc/hosts
ls Packages/
cd Installed\ Packages/
cd Settings/
ls ../
mv ~/Downloads/Sublime-Packages-master/Default/ ./
cd Default/
cd /Applications/Sublime\ Text.app/Contents/Resources/
cd MacOS/
cat Default.sublime-package 
cd SharedSupport/
cd bin/
cd .././
ls */*
cd ~/Library/Application\ Support/Sublime\ Text\ 3/
cd Packages/
rm -r Default/
rm User/fold.py 
python
cd Local/
cd ..
rtee
brew install tree
tree -d2
tree -L2
tree
tree -d
tree -h
tree --help
tree --
tree -dj-
tree -L1
tree -L 
tree -L 1
tree -L 2
cd /Applications/Sublime\ Text.app/
find . -name *.py
cd Contents/MacOS/
ipython
cd
cd .bin/
rm listwifi.sh 
python listwifi.py
airport -s
airport -s | tail -1
man tail
ls
./listwifi.py 
vim listwifi.py
brew install grep 
ggrep 
ggrep --help
man ggrep
man grep
airport -s | grep  '(?=(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
which grep
grep
history 
airport -s | grep -o  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
airport -s | grep -oE  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
airport -s | grep -oE  '([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | grep -oE  '([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}'
airport -s | grep -oP  '([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}'
airport -s | ggrep -oP  '([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}'
airport -s | ggrep -oP  '(?=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
airport -s | ggrep -oP  '(?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo '78 FR 12345' | ggrep -oP  '(?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo '78 FR 12345' | ggrep -oP  '(?<=\d\d )FR(?= \d\d\d\d\d)
'
unset GREP_OPTIONS 
vim /Users/kizzlebot/.bash_aliases 
source /Users/kizzlebot/.bash_aliases 
echo '78 FR 12345' | ggrep -oP  '(?<=\d\d )FR(?= \d\d\d\d\d)'
echo '78 FR 12345' | ggrep -oP  '.+?(?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo '9c:1c:12:9e:01:93' | ggrep -oP  '.+?(?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '.+?(?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '.+? (?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '.+'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '.+?'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '.+ (?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '.* (?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '\w+ (?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '\w+(?<=([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '\w+(?!([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '\w+(?!(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2}))'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '(([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '(?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
echo 'abcd 9c:1c:12:9e:01:93' | ggrep -oP  '\w+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '\w+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s
airport -s | ggrep -oP  '[A-Za-z0-9]+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '[A-Za-z0-9 ]+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '.+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '\A.+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '^\s+.+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '^\s+ (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | ggrep -oP  '^\s (?=((([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
airport -s | pbcopy
airport -s | ggrep -oP  '\S.+(?=( (([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))'
echo airport -s | ggrep -oP  '\S.+(?=( (([A-Za-z0-9]{2}:){5}[A-Za-z0-9]{2})))' |pbcopy 
kill 47770
kill 47769
kill 47753
ps x
vim
vim listwifi.py
vim
cd .bin/
rm ~/.vimswap/listwifi.py.swp 
vim listwifi.py
ls
cat listwifi.py
gist 
gist  --list
ping google.com
ping google.com
cd Documents/
ls
