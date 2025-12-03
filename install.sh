#!/bin/sh
sudo apt update && sudo apt upgrade
sudo apt install -y tmux git snapd

sudo snap install nvim --classic
sudo snap install lazygit

# Configure git
git config --global user.name "Lucas Ikuhara"
git config --global user.email "lri2911@gmail.com"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Install Asf
sudo curl -s https://raw.githubusercontent.com/LucasIkuhara/asf/main/install.sh | bash -s

# Install poetry
curl -sSL https://install.python-poetry.org | python3 -

# Link files
ln -s nvim/ ~/.config/nvim
