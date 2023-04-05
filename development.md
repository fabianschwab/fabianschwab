# Development Setup

All development related topics are gathered here.

1. Tools
2. SSH Key
3. Terminal
4. IDEs
5. Managing dot files
6. More Stuff

## Tools

1. [Brew](https://brew.sh) package manager for macOS (get install script from website).
2. Node version manager for `node` and `npm` cli in different versions.

    ```shell
    # Install node version manager
    brew install nvm

    # Install latest LTS version
    nvm install --lts

    # Optional: Change color output of nvm ls
    nvm set-colors cgYmW

    # Install latest npm version for node version
    nvm install-latest-npm

    # Pnpm - Fast, disk space efficient package manager for node
    brew install pnpm
    ```

3. Maccy clipboard manager

    ```shell
    brew install --cask maccy
    ```

## SSH Key

Create **ssh key** on macOS

```shell
# Create new ssh key if necessary
ssh-keygen -t rsa
# Keep default name and enter passphrase
```

Add SSH Key to [GitHub](https://github.com/settings/ssh/new)

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

1. Install fonts from [Nerd Font](https://www.nerdfonts.com).

    ```shell
    brew tap homebrew/cask-fonts

    # Install editor font
    brew install --cask font-fira-code-nerd-font

    # Optional: Hack font
    brew install --cask font-hack-nerd-font

    # Optional: IBM hack font
    brew install --cask font-blex-mono-nerd-font
    ```

2. Change prompt to [starship](https://starship.rs) by running

    ```shell
    # Install starship
    brew install starship

    # Create config for custom settings in the prompt
    mkdir -p ~/.config && touch ~/.config/starship.toml
    ```

    Create new custom config, use a preset or copy the file `.config/starship.toml` to the local machine.

    For using it when the terminal starts up add the following to the `.zshrc` file:

    ```text
    # Load starship
    eval "$(starship init zsh)"
    ```

3. Terminal Addons

    ```shell
    # Better listing tool
    brew install exa
    ```

### Warp Terminal

Download [Warp](https://www.warp.dev) Terminal and login with [GitHub](github.com) for features like sharing code blocks.

#### Theme

To use the **Starship** prompt in **Warp** right click in the warp prompt and select **use own prompt**.  
Also change font to `FiraCode Nerd Font` under **Settings** --> **Appearance**. Check the box to see all fonts.

Need `.warp/themes` folder in the home directory

```shell
mkdir -p ~/.warp/themes/
```

Create custom theme with the [Warp Theme Generator](https://warp-themes.com) or use theme blow,
matching to the [Tokyo Night](https://marketplace.visualstudio.com/items?itemName=enkia.tokyo-night) theme.

```text
accent: "#3d59a1"
background: "#1a1b26"
foreground: "#a9b1d6"
details: "darker"
terminal_colors:
normal:
    black: "#616161"
    red: "#ff8272"
    green: "#b4fa72"
    yellow: "#fefdc2"
    blue: "#a5d5fe"
    magenta: "#ff8ffd"
    cyan: "#d0d1fe"
    white: "#f1f1f1"
bright:
    black: "#8e8e8e"
    red: "#ffc4bd"
    green: "#d6fcb9"
    yellow: "#fefdd5"
    blue: "#0054FF"
    magenta: "#ffb1fe"
    cyan: "#e5e6fe"
    white: "#feffff"
```

#### Workflows

<!-- TODO -->

## IDE

Common used IDES are listed here:

1. Xcode
2. Visual Studio Code
3. Android Studio
4. IntelliJ IDEA CE

### Visual Studio Code

[Download & Install](https://code.visualstudio.com)

To automatically load synced settings, login with [GitHub](github.com) and turn on **Settings Sync**

To get the colors from the current VS Code theme, execute from command palette:

```cmd
Developer: Generate Color Theme From Current Settings
```

#### Customized Settings

Font for editor:

```shell
# Optional when already installed for terminal
brew tap homebrew/cask-fonts

# Optional when already installed for terminal
brew install --cask font-fira-code-nerd-font
```

Add the following to te `settings.json` file.

Hit <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>p</kbd> and type `settings.json` and hit <kbd>enter</kbd>

The following properties were added:

```json
{
    ...settings,
    // Label short to only view the parent folder in the editor tab
    "workbench.editor.labelFormat": "short",
    // Font for editor
    "editor.fontFamily": "FiraCode Nerd Font",
    "editor.fontLigatures": true,
    // Font for terminal
    "terminal.integrated.fontFamily": "FiraCode Font Mono",
}
```

#### Changed Settings Documentation

1. Integrated Terminal Font `Hack Nerd Font`
2. Editor Font `FiraCode Nerd Font`
3. Theme `Tokyo Night`
4. Icons `Material Icon Theme`
5. Plugins
   - `Auto Rename Tag`
   - `Bash Beautify`
   - `Better Comments`
   - `Better TOML`
   - `Code Spell Checker`
   - `DotEnv`
   - `GitLens`
   - `HashiCorp Terraform`
   - `LiveShareExtensionPack`
   - `Markdown All in One`
   - `MarkdownLint`
   - `NPM Intellisense`
   - `Path Intellisense`
   - `Prettier`
   - `Prisma`
   - `Svelte for VS Code`
   - `SVG`
   - `Tailwind CSS IntelliSense`
6. Terminal
   - Go *Code* -> *Preferences* -> *Settings*  
   - Search type in **Terminal**
   - Replace the `Terminal.app` with the `Warp.app` under **Osx Exec**
   - <kbd>cmd</kbd> + <kbd>shift</kbd> + <kbd>c</kbd> will open a new session in the application

## Managing dot files

Using [YADM](https://yadm.io/#) for this.

<!-- TODO: Setup and document usage -->

## More Stuff

Useful tools

```shell
# podman
brew install podman
```

Optional :

```shell
# Kubernetes cli
brew install kubernetes-cli

# OpenShift cli for `oc` commands
brew install openshift-cli

# IBM cloud cli `ibmcloud`
brew install --cask ibm-cloud-cli

# Kafka interaction cli
brew install kcat
```

### K9s for managing clusters

```shell
brew install k9s

# Check where the config files are located by running:
k9s info
```

Copy the `.k9s` folder into the folder of the given path e.g.: `Configuration: /Users/<username>/Library/Application Support/k9s/config.yml`

The skin and the location of the logs had been changed so far.

### Python

```shell
# Python version manager
brew install pyenv
```

**ChatGPT:** Whats the difference between `pyenv` and `python3 -m venv`?

**Answer:** Both `pyenv` and `python3 -m venv` are used to create virtual environments for Python development, but they work in slightly different ways.

`pyenv` init is a command used to initialize `pyenv`, which is a tool for managing multiple versions of Python on the same machine.
Once `pyenv` is installed, `pyenv` init can be used to set up the shell integration,
which enables `pyenv` to automatically switch the Python version based on the directory being used.
This means that when you enter a directory that contains a Python project that requires a specific Python version,
`pyenv` can automatically switch to that version for you. However, `pyenv` init does not create a virtual environment.

On the other hand, `python3 -m venv` is a command used to create a virtual environment for Python development.
A virtual environment is a self-contained directory that contains a specific version of Python and any necessary packages or dependencies.
When you activate the virtual environment, any packages installed within that environment will be isolated from the global
Python installation, which helps prevent conflicts with other projects that might require different versions of the same package.

So, while `pyenv` init is used to manage multiple versions of Python on the same machine,
`python3 -m venv` is used to create isolated virtual environments for specific projects.

```shell
# Python package and dependency manager
brew install poetry
```
