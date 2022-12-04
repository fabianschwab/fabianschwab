# Development Setup

All development related topics are gathered here.

1. Tools
2. SSH Key
3. Terminal
4. IDEs
5. More Stuff

## Tools

1. [Brew](https://brew.sh) package manager for macOS (get install script from website).
2. Node version manager for `node` and `npm` cli in different versions.

    ```shell
    # Install node version manager
    brew install mvn

    # Install latest LTS version
    nvm install --lts

    # Install latest npm version for nodes
    nvm install-latest-npm

    # Optional: Change color output of nvm ls
    nvm set-colors cgYmW
    ```

## SSH Key

Create **ssh key** on macOS

```shell
# Create new ssh key if necessary
ssh-keygen -t rsa
# Keep default name and enter passphrase
```

Add SSH Key to  [GitHub](https://github.com/settings/ssh/new)

Copy ssh key to clipboard

```shell
cat ~/.ssh/id_rsa.pub | pbcopy
```

If passphrase is needed every time after a terminal restart, update ssh `config` to use keychain

```shell
# Add the ssh key so that no prompt for passphrase is showing up every time the ssh key is used
ssh-add .ssh/id_rsa

# Create end edit ssh config
touch ~/.ssh/config
```

Paste the following into the config file:

```text
Host *
    UseKeychain yes
```

## Terminal

1. Download [Warp](https://www.warp.dev) Terminal
   1. Login with [GitHub](github.com) for sharing
2. Install fonts from [Nerd Font](https://www.nerdfonts.com). Using: IBM Plex Mono

    ```shell
    brew tap homebrew/cask-fonts

    # IBM hack font
    brew install --cask font-blex-mono-nerd-font

    # Optional: Hack font
    brew install --cask font-hack-nerd-font
    ```

3. Change prompt to [starship](https://starship.rs) by running

    ```shell
    # Install starship
    brew install starship

    # Create config for custom settings in the prompt
    mkdir -p ~/.config && touch ~/.config/starship.toml
    ```

    For using it when the terminal starts up add the following to the `.zshrc` file:

    ```text
    # Load starship
    eval "$(starship init zsh)"
    ```

   <!-- TODO: 1. Starship configuration -->

4. Theme Warp Terminal

    To use the **Starship** prompt in **Warp** right click in the warp prompt and select **use own prompt**.  
    Also change font to `BlexMono Nerd Font` under **Settings** --> **Appearance**. Check the box to see all fonts.

    Need `.warp/themes` folder in the home directory

    ```shell
    mkdir -p ~/.warp/themes/
    ```

    <!-- TODO create theme for vs code theme -->

5. Terminal Addons

    ```shell
    # Better listing tool
    brew install exa
    ```

## IDE

Common used IDES are listed here:

1. Xcode
2. Visual Studio Code
3. Android Studio
4. IntelliJ IDEA CE

### Visual Studio Code

[Download & Install](https://code.visualstudio.com)

To automatically load synced settings, login with [GitHub](github.com) and turn on **Settings Sync**

### Changed Settings Documentation

1. Editor Fonts `BlexMono Nerd Font`
2. Theme `Tokyo Night`
3. Icons `Material Icon Theme`
4. Plugins
   - `Auto Rename Tag`
   - `Bash Beautify`
   - `Better Comments`
   - `Better TOML`
   - `Code Spell Checker`
   - `DotEnv`
   - `Emoji`
   - `GitLens`
   - `HashiCorp Terraform`
   - `LiveShareExtensionPack`
   - `Markdown All in One`
   - `MarkdownLint`
   - `NPM Intellisense`
   - `Path Intellisense`
   - `Prisma`
   - `Svelte for VS Code`
   - `SVG`
   - `SVG Viewer`
   - `Tailwind CSS IntelliSense`
5. Terminal
   - Go *Code* -> *Preferences* -> *Settings*  
   - Search type in **Terminal**
   - Replace the `Terminal.app` with the `Warp.app` under **Osx Exec**
   - *cmd + shift + c* will open a new session in the application

## More Stuff

- M1 Mac has some issues with **Native React** cli because it needs an older version of Ruby.  
  So to fix the issue with that follow the [stackoverflow](https://stackoverflow.com/questions/69012676/install-older-ruby-versions-on-a-m1-macbook) instructions with `asdf`.

```shell
# Kubernetes cli
brew install kubernetes-cli

# OpenShift cli for `oc` commands
brew install openshift-cli

# IBM cloud cli `ibmcloud`
brew install --cask ibm-cloud-cli
```
