# Setup of new environment

## Basics
1. Create a new folder under your home directory with name ``Code``for Git repositories
2. Install font for command line interface [Source Sans Pro for Powerline](https://github.com/powerline/fonts)
3. Install [Homebrew](https://brew.sh/)
4. Install [Git](https://formulae.brew.sh/formula/git) via Homebrew
5. Install [Hyper](https://hyper.is/) or [iTerm 2](https://formulae.brew.sh/cask/iterm2) via Homebrew
6. Install [oh-my-zsh](https://ohmyz.sh/#install)
7. Install [Visual Studio Code](https://code.visualstudio.com/)

## Setup Git
``git config --global user.name "Max Mustermann"``  
``git config --global user.email "mail@maxmustermann.com"``

> Warning! You'll get notified by GitHub when using an private email address. Check out [this](https://stackoverflow.com/questions/43863522/error-your-push-would-publish-a-private-email-address)

## Create SSH Key
> Information about using SSH on GitHub repositories are found [here](https://stackoverflow.com/questions/2643502/git-how-to-solve-permission-denied-publickey-error-when-using-git)

> Don't forget to add SSH Key to GitHub account

**Go to .ssh folder**  
``cd ~/.ssh && ssh-keygen``

**Create SSH Key and copy to clipboard**  
``cat id_rsa.pub | pbcopy``

## Configure Visual Studio Code
**Add possibility to start Visual Studio Code from terminal**
1. Start Visual Studio Code
2. Press ``CMD + SHIFT + P`` to open Command Palette
3. Type ``Shell``
4. Select ``Shell Command: Install code in PATH``

**Now you can open a file from terminal command in Visual Studio Code**  
``code .``

**Configure terminal**
1. Open Visual Studio Code
2. Press ``CMD + Shift + P``, type ``settings.json`` and navigate to ``Open User Settings (JSON)``
3. Paste raw code from ``settings.json`` into Visual Studio Code settings

## Configure oh-my-zsh & Hyper/iTerm
1. Open .zshrc file ``code ~/.zshrc``
2. Paste the content from ``.zshrc``
3. Import [Halcyon Color Scheme](https://halcyon-theme.netlify.app/) (You can use this for many code editors as well as terminals)
4. Import preferences from ``.hyper.js`` or import JSON-File ``skaiwlkr.json`` as a profile in iTerm from this repository
5. Change the home path of located code/repositories

## Recommended zsh plugins
[zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting)
[zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)