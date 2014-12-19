# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/bin

export PATH
export HISTSIZE=100000

# grep
export GREP_OPTIONS='--color=auto --exclude-dir=.git'
