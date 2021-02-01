# Runs on login and sets some environment variables and stuff

# set local bin folder and sub folders in PATH
export PATH="$PATH:$(du "$HOME/.local/bin/" | cut -f2 | tr '\n' ':' | sed 's/:*$//')"

# Set Golang paths and add to PATH
export GOPATH=$HOME/code/go
export GOBIN=$HOME/code/go/bin
export PATH=$PATH:$GOBIN

# Set wallpaper to use
export WALLPAPER=$HOME/Pictures/wallpapers/spike_and_julia.jpg

# Set default programs
export BROWSER="brave"
export EDITOR="nvim"
export FILE="ranger"
export READER="zathura"
export TERMINAL="st"

# Used in weather scripts
export LOCATION="Raleigh"

# Home dir cleanup
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority" # This line will break some DMs.
export NOTMUCH_CONFIG="$HOME/.config/notmuch-config"
export GTK2_RC_FILES="$HOME/.config/gtk-2.0/gtkrc-2.0"
export LESSHISTFILE="-"
export WGETRC="$HOME/.config/wget/wgetrc"
export INPUTRC="$HOME/.config/inputrc"
export ZDOTDIR="$HOME/.config/zsh"
export PASSWORD_STORE_DIR="$HOME/.local/share/password-store"
# This is for signing git commits, unlocks the gpg key
export GPG_TTY=$(tty)

export SUDO_ASKPASS="$HOME/.local/bin/dmenupass"

# Start tty if in tty1 and not already running
[ "$(tty)" = "/dev/tty1" ] && ! pgrep -x Xorg >/dev/null && exec startx
