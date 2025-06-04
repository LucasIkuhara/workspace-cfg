#!/bin/sh
sudo apt update && sudo apt upgrade
sudo apt install -y tmux git

sudo snap install neovim --classic
sudo snap install lazygit

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install oh-my-bash
bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Install Asf
sudo curl -s https://raw.githubusercontent.com/LucasIkuhara/asf/main/install.sh | bash -s

# Install poetry
curl -sSL https://install.python-poetry.org | python3 -
