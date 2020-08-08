#!/usr/bin/bash

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

# TODO

wget "$SUBLIME_PATH/Preferences.sublime-settings"
echo "ewogImNtZCI6IFsiL3Vzci9iaW4vcHl0aG9uMyIsICItdSIsICIkZmlsZSJdLAogImZpbGVfcmVnZXgiOiAiXlsgXUZpbGUgXCIoLi4uPylcIiwgbGluZSAoWzAtOV0qKSIsCiAic2VsZWN0b3IiOiAic291cmNlLnB5dGhvbiIKfQ==" | base64 -d  >> "$SUBLIME_PATH/python3.sublime-build"


# Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

# Remove Junk
sudo apt remove aisleriot gnome-mahjongg gnome-mines gnome-sudoku 
sudo apt-get purge thunderbird*

sudo apt-get update
sudo apt-get upgrade
