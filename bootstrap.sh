#!/bin/bash

git pull origin main;

function doIt() {
	rsync --exclude ".git/" \
		--exclude ".DS_Store" \
		--exclude ".osx" \
		--exclude "bootstrap.sh" \
		--exclude "README.md" \
		--exclude "LICENSE" \
		-avh --no-perms . ~;
	echo "This should come here";	
	source ~/.bash_profile;
	echo "This should end here";
}

doIt;

unset doIt;
