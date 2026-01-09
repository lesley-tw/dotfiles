#!/usr/bin/env bash

# Prerequisites:
# * Homebrew - /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
brew upgrade

brew install coreutils
brew install git
brew install subversion
brew install less
brew install gnupg
brew install wget
brew install neofetch
brew install tmux
brew install neovim
brew install --HEAD universal-ctags/universal-ctags/universal-ctags
brew install fnm
brew install python
brew install lua
brew install bat
brew install eza
brew install fd
brew install ripgrep
brew install fzf
brew install git-delta
brew install jq
brew install jless
brew install glow
brew install uv

brew install tfenv
brew install awscli
brew install azure-cli
brew install kubernetes-cli
brew install k9s
brew install helm
brew install tealdeer

brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font
brew install --cask google-chrome
brew install --cask visual-studio-code
brew install --cask dbeaver-community
brew install --cask docker
brew install --cask docker-desktop
brew install --cask iterm2
brew install --cask itsycal
brew install --cask sublime-text
brew install --cask spotify
brew install --cask telegram
brew install --cask alacritty
brew install --cask flameshot
brew install --cask balance-lock
brew install --cask bettertouchtool
brew install --cask iina
brew install --cask 1password
brew install --cask 1password-cli
brew install --cask claude
brew install --cask claude-code
brew install --cask arc
brew install --cask appcleaner
brew install --cask antigravity
brew cleanup

# Disable System Integrity Protection first
brew install koekeishiya/formulae/yabai
brew install koekeishiya/formulae/skhd
