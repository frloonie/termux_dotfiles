path() {
	test -d "$2" || return
	case ":$PATH:" in
		(*:"$2":*)
			;;
		(*)
			case "$1" in
				(prepend) PATH="$2:$PATH" ;;
				(append) PATH="$PATH:$2" ;;
			esac
	esac
}

for i in /data/data/com.termux/files/home/workspace/personal/termux_dotfiles/local/etc/profile.d/*.sh; do
	if [ -r $i ]; then
		. $i
	fi
done
unset i
