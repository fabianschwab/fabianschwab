# Quick start

This is a quick start guide to set up all settings as fast as possible from scratch without much explanation.

```shell
# Yet another dot file manager
brew install yadm

# SSH
ssh-keygen -t rsa
ssh-add .ssh/id_rsa
echo 'Host *
    UseKeychain yes' > filename

# Font
brew tap homebrew/cask-fonts
brew install --cask font-fira-code-nerd-font

# Exa
brew install exa

# Node
brew install nvm
nvm install --lts
nvm set-colors cgYmW
nvm install-latest-npm
brew install pnpm

# Python
brew install pyenv
brew install poetry

# Clipboard Manager
brew install --cask maccy

# podman
brew install podman

# Kubernetes cli
brew install kubernetes-cli

# k9s
brew install k9s

# Kafka interaction cli
brew install kcat
```
