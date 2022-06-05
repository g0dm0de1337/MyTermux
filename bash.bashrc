# Command history tweaks:
# - Append history instead of overwriting
#   when shell exits.
# - When using history substitution, do not
#   exec command immediately.
# - Do not save to history commands starting
#   with space.
# - Do not save duplicated commands.
shopt -s histappend
shopt -s histverify
export HISTCONTROL=ignoreboth

# Default command line prompt.
figlet -f slant g0d-
figlet -f slant m0de

PROMPT_DIRTRIM=2
PS1='\[\e[31m\]┌─[\[\e[37m\]\T\[\e[31m\]]───\e[1;98m[@g0d-m0de]\e [───[\#]\n|\n\e[└─[\[\e[31m\]\e[0;35m\W\
[\e[31m\]]───►\e[1;93m'

# Handles nonexistent commands.
# If user has entered command which invokes non-available
# utility, command-not-found will give a package suggestions.
if [ -x /data/data/com.termux/files/usr/libexec/termux/command-not-found ]; then
	command_not_found_handle() {
		/data/data/com.termux/files/usr/libexec/termux/command-not-found "$1"
	}
fi
