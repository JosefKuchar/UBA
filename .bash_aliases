# UsefulBashAliases by Josef Kuchař - https://github.com/JosefKuchar/UBA

# Download music from e.g. youtube easily
alias download-mp3="youtube-dl --output '%(title)s.%(ext)s' --extract-audio --audio-format mp3 --add-metadata --metadata-from-title '%(artist)s - %(title)s'"

# Easy file sharing from the command line
transfer() { if [ $# -eq 0 ]; then echo -e "No arguments specified. Usage:\necho transfer /tmp/test.md\ncat /tmp/test.md | transfer test.md"; return 1; fi
tmpfile=$( mktemp -t transferXXX ); if tty -s; then basefile=$(basename "$1" | sed -e 's/[^a-zA-Z0-9._-]/-/g'); curl --progress-bar --upload-file "$1" "https://transfer.sh/$basefile" >> $tmpfile; else curl --progress-bar --upload-file "-" "https://transfer.sh/$1" >> $tmpfile ; fi; cat $tmpfile; rm -f $tmpfile; } 

## BASIC COMMANDS ##

# ls with color as default
alias ls="ls --color=auto"

# Print everything with ls
alias ll="ls -la"

# Fix cd .. mistypo
alias cd..="cd .."
