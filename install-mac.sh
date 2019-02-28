#!/bin/bash
# Setup script for dotfiles
# Author: Joseph Paul <mail@jsph.pl>

function installPrerequisites() {
	echo 'Install prerequisite: XCode CLI'
	xcode-select --install
	sudo xcodebuild -license accept

	echo 'Install prerequisite: homebrew'
	/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

	echo 'Install prerequisite: python3 & pip'
	brew install python3
	brew link python3

	echo 'Install prerequisite: ansible'
	pip3 install ansible
}

function runAnsible() {
	ansible-galaxy install -r requirements.yml
	ansible-playbook setup.yml
}

installPrerequisites
runAnsible
