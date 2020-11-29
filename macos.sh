#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "Hello $(whoami)! Let's get you set up."

echo "Creating ~/code"
mkdir -p "${HOME}/code"

# Install Homebrew https://brew.sh
if bin/is-executable brew; then
  echo "Homebrew already installed"
else
  echo "Installing Homebrew"
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# Install Homebrew packages
echo "Installing Homebrew packages"
brew bundle install

# Link .zshrc
if [ ! -f "${HOME}/.zshrc" ]; then
  echo "Linking .zshrc"
  ln -s "${HOME}/code/dotfiles/.zshrc" "${HOME}/.zshrc"
fi

source "${HOME}/.zshrc"

# Install NVM
if command -v nvm; then
  echo "NVM already installed"
else
  echo "Installing nvm v0.37.0"
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.0/install.sh | bash
fi

source "${HOME}/.zshrc"

# Installing latest node version
nvm install 'lts/*'
