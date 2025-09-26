#!/bin/zsh

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install fish
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
fish_add_path "/opt/homebrew/bin/"
