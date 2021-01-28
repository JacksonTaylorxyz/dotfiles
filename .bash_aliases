alias books="cd $HOME/Documents/books"
alias calcurse="calcurse -D ~/.config/calcurse"
alias cdgo="cd $HOME/code/go/src/github.com/HelixBePraised"
alias code="cd $HOME/code"
alias dox="cd $HOME/Documents"
alias dl="cd $HOME/Downloads"
alias gs="git status"
alias jojo="cd $HOME/Documents/books/manga/jojos_bizarre_adventure"
alias ll="ls -lAh"
alias ls="ls -A --color=auto --group-directories-first"
alias music-dl="youtube-dl -x --audio-format mp3 "
# alias music="cd $HOME/Music"
alias pix="cd $HOME/Pictures"
alias ranger="ranger_cd"
alias site="cd ~/code/jacksontaylor.xyz"
alias up="cd ../"
alias vim="nvim"
alias wiki="nvim +VimwikiIndex"

# Function to cd to last open dir in ranger
ranger_cd() {
	temp_file="$(mktemp -t "ranger_cd.XXXXXXXXXX")"
	ranger="${1:-ranger}"
	if [ -n "$1" ]; then
	    shift
	fi
	"$ranger" --choosedir="$temp_file" -- "${@:-$PWD}"
	return_value="$?"
	if chosen_dir="$(cat -- "$temp_file")" && [ -n "$chosen_dir" ] && [ "$chosen_dir" != "$PWD" ]; then
	    cd -- "$chosen_dir"
	fi
	rm -f -- "$temp_file"
	return "$return_value"
}
