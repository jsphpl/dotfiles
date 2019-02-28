#!/bin/bash
# Setup script for dotfiles
# Author: Joseph Paul <mail@jsph.pl>

function installPrerequisites() {
	echo 'Install prerequisite: python3 & pip'
	sudo pacman -Sy python python-pip git

	echo 'Install prerequisite: ansible'
	pip3 install ansible

    echo 'Install prerequisite: ansible-aur module'
    mkdir -p ~/.ansible/plugins/modules/
    git clone https://github.com/kewlfft/ansible-aur.git ~/.ansible/plugins/modules/aur
}

function runAnsible() {
	ansible-galaxy install -r requirements.yml
	ansible-playbook setup.yml
}

installPrerequisites
runAnsible
