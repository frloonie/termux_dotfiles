# Interactive shell aliases

# Clear aliases set by distro maintainers:
alias | while read -r alias; do
	unalias -- "${alias%%=*}"
done

# Generic aliases:
alias cp='cp -i'
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias ll='ls -lh --time-style=long-iso'
alias ls='ls -A --color=auto --quoting-style=literal'
alias lt='ll -t'
alias mv='mv -i'

# Expand aliases for some commands as well:
alias sudo='sudo '
alias watch='watch '
