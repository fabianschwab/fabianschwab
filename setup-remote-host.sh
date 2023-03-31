#!/bin/bash

# curl -sS https://raw.githubusercontent.com/fabianschwab/fabianschwab/main/setup-remote-host.sh | bash

# Install required dependencies
sudo apt-get update && sudo apt-get install -y curl unzip fontconfig

# Download and install FiraCode Nerd Font
cd /tmp
curl -LO https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip
unzip FiraCode.zip -d ~/.fonts
fc-cache -f -v

# Download and install Starship prompt
cd /tmp
curl -LO https://github.com/starship/starship/releases/latest/download/starship-x86_64-unknown-linux-gnu.tar.gz
tar xvf starship-x86_64-unknown-linux-gnu.tar.gz
sudo mv starship /usr/local/bin/

# Add the Starship prompt to your shell's configuration file
echo 'eval "$(starship init bash)"' >> ~/.bashrc

# Reload the shell to apply changes
source ~/.bashrc

# Done!
echo "FiraCode Nerd Font and Starship prompt have been installed successfully!"

# Set the new font for the Bash terminal
echo 'export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "' >> ~/.bashrc
echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
echo 'export LANGUAGE=en_US.UTF-8' >> ~/.bashrc
echo 'export LC_ALL=en_US.UTF-8' >> ~/.bashrc
echo 'export FIRA_CODE_FONT="FiraCode Nerd Font"' >> ~/.bashrc
echo 'export FIRA_CODE_FONT_SIZE="12"' >> ~/.bashrc
echo 'export FIRA_CODE_FONT_WEIGHT="bold"' >> ~/.bashrc
echo 'export FIRA_CODE_FONT_STYLE="regular"' >> ~/.bashrc
echo 'export FIRA_CODE_FONT_SPACING="90"' >> ~/.bashrc

mkdir ~/.config
# Download the Starship configuration file
cd ~/.config
curl -LO https://raw.githubusercontent.com/fabianschwab/fabianschwab/main/.config/starship.toml

echo "Setup complete! May the force be with you  !"