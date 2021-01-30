#
# This file fixes the variables responsible for making the XDG basedir spec work
# (https://specifications.freedesktop.org/basedir-spec/basedir-spec-latest.html)
# and does not set any other environment variables, as it is rather cumbersome
# to adopt changes herein. Other environment variables are set in the shell
# scripts' respective startup files (.zprofile, .bash_profile, ...).
#
# Inspired by ayekat who wrote this on a cold afternoon in november 2016.


# XDG base directory specification (XDG_LIB,LOG_HOME are non-standard!)
XDG_CACHE_HOME="$HOME/.local/var/cache"
XDG_CONFIG_HOME="$HOME/.local/etc"
XDG_DATA_HOME="$HOME/.local/share"
XDG_STATE_HOME="$HOME/.local/var/lib"
XDG_LIB_HOME="$HOME/.local/lib"
XDG_LOG_HOME="$HOME/.local/var/log"
LD_LIBRARY_PATH="$XDG_LIB_HOME"

# Fix various applications to respect XDG
AZURE_CONFIG_DIR="$XDG_STATE_HOME/azure"
CARGO_HOME="$XDG_STATE_HOME/cargo"
GNUPGHOME="$XDG_STATE_HOME/gnupg"
LESSHISTFILE="$XDG_STATE_HOME/lesshist"
MYSQL_HISTFILE="$XDG_STATE_HOME/mysql_history"
NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
NLTK_DATA="$XDG_STATE_HOME/nltk"
PASSWORD_STORE_DIR="$XDG_STATE_HOME/pass"
PGPPATH="$GNUPGHOME"
PYTHONSTARTUP="$XDG_LIB_HOME/python/startup.py"
RANDFILE="$XDG_CACHE_HOME/rnd"
SQLITE_HISTORY="$XDG_STATE_HOME/sqlite_history"
TASKDATA="$XDG_STATE_HOME/task"
TASKRC="$XDG_CONFIG_HOME/task/taskrc"
TERMINFO="$XDG_DATA_HOME/terminfo"
TMUX_TMPDIR="$XDG_RUNTIME_DIR"
VAULT_CLIENT_CONFIG="$XDG_STATE_HOME/vault-client/vaultrc"
ZDOTDIR="$XDG_CONFIG_HOME/zsh"
