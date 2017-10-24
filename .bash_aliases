# UsefulBashAliases by Josef Kuchař - https://github.com/JosefKuchar/UBA

# Download music from e.g. youtube easily
alias download-mp3="youtube-dl --output '%(title)s.%(ext)s' --extract-audio --audio-format mp3"

## BASIC COMMANDS ##

# ls with color as default
alias ls="ls --color=auto"

# Print everything with ls
alias ll="ls -la"

# Fix cd .. mistypo
alias cd..="cd .."
