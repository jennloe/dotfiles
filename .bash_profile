# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:$HOME/.local/bin:$HOME/bin

export PATH

#Changes screen display name.  See here: https://medium.com/@ajaykarwal/edit-the-terminal-prompt-name-on-macos-4d80163be6a1
export PS1="Orangutan:\W \u$ "
