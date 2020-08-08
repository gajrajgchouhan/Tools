#!/usr/bin/bash
# Author : Gajraj Singh Chouhan
# Date : 8th August 2020
# Inspiration : https://github.com/JohnHammond/archlinux/blob/master/bootstrap.sh

# First time update
sudo apt-get update
sudo apt-get upgrade

# Usually needed
sudo apt-get install curl
sudo apt-get install git
sudo apt install gnome-tweaks

sudo apt-get install python3-pip
pip3 install notebook

echo "PATH=$PATH:~/.local/bin" >> ~/.bashrc # for jupyter-notebook

echo "alias python=python3.8" >> ~/.bashrc
echo "alias pip=pip3" >> ~/.bashrc
source ~/.bashrc

# Install Sublime
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - 
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text

# Install settings for Sublime

SUBLIME_PATH="~/.config/sublime-text-3/Packages/User"

bash -c "echo ewogImNtZCI6IFsiL3Vzci9iaW4vcHl0aG9uMyIsICItdSIsICIkZmlsZSJdLAogImZpbGVfcmVnZXgiOiAiXlsgXUZpbGUgXCIoLi4uPylcIiwgbGluZSAoWzAtOV0qKSIsCiAic2VsZWN0b3IiOiAic291cmNlLnB5dGhvbiIKfQ== | base64 -d  >> $SUBLIME_PATH/python3.sublime-build"

# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Remove Junk
# Remove Games, Mozilla Thunderbird, To-Do
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku 
sudo apt-get purge thunderbird*
sudo apt-get purge gnome-todo*

# My Extensions
sudo apt install gnome-shell-extension-autohidetopbar

sudo apt-get update
sudo apt-get upgrade