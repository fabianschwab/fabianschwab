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
    brew install --cask font-hack-nerd-font
    ```

3. Change prompt to [starship](https://starship.rs) by running

    ```shell
    brew install starship
    ```

    <!-- TODO: config for prompt -->

4. Theme Warp Terminal

    Need `.warp/themes` folder in the home directory
    <!-- TODO: Theme with colors of listing and icons -->
    ```shell
    mkdir -p ~/.warp/themes/
    ```

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

1. [Download & Install](https://code.visualstudio.com)
2. Login with [GitHub](github.com) for sharing and settings
3. Theme `Tokyo Night`
4. Icons `Material Icon Theme`
5. Plugins
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
6. Terminal
   - Go *Code* -> *Preferences* -> *Settings*  
   - Search type in **Terminal**
   - Replace the `Terminal.app` with the `Warp.app` under **Osx Exec**
   - *cmd + shift + c* will open a new session in the application

## More Stuff

- M1 Mac has some issues with **Native React** cli because it needs an older version of Ruby.  
  So to fix the issue with that follow the [stackoverflow](https://stackoverflow.com/questions/69012676/install-older-ruby-versions-on-a-m1-macbook) instructions with `asdf`.
