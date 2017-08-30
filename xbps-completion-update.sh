#!/bin/bash
Option=$1
if [ "$1" = -r ]; then
	echo "Removing completion files..."
	rm ~/.local/share/xbps-completion-available
	rm ~/.local/share/xbps-completion-installed
	echo "To remove scripts aswell delete them from /etc/bash_completions.d/"
else
	if [ -e ~/.local/share/xbps-completion-available ]; then
			echo "Updating available package list..."
	else
			echo "Creating available package list..."
	fi
	xbps-query -Rs '*' | awk '{print $2}' | sed 's/\(.*\)-.*/\1/' | awk '{print $1}' ORS=' ' | cat > ~/.local/share/xbps-completion-available
	if [ -e ~/.local/share/xbps-completion-installed ]; then
			echo "Updating installed package list..."
	else
			echo "Creating installed package list..."
	fi
	xbps-query -s '*' | awk '{print $2}' | sed 's/\(.*\)-.*/\1/' | awk '{print $1}' ORS=' ' | cat > ~/.local/share/xbps-completion-installed
echo "If you want to remove the package lists run this script with -r"
fi
