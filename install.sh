#!/bin/sh
sudo apt update -y && sudo apt upgrade -y
sudo apt install -y tmux git snapd curl

sudo snap install nvim --classic
sudo snap install lazygit

# Configure git
git config --global user.name "Lucas Ikuhara"
git config --global user.email "lri2911@gmail.com"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install Asf
sudo curl -s https://raw.githubusercontent.com/LucasIkuhara/asf/main/install.sh | bash -s

# Install poetry
curl -sSL https://install.python-poetry.org | python3 -

# Link files
ln -s nvim/ ~/.config/nvim
ln .tmux.conf ~/.tmux.conf

# Install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cat .bashrd_appends >> ~/.bashrc
