# Setup of new environment

## Basics
1. Install font for command line interface [Source Sans Pro for Powerline](https://github.com/powerline/fonts)
2. Install [Homebrew](https://brew.sh/)
3. Install [Git](https://formulae.brew.sh/formula/git) via Homebrew
4. Install [iTerm 2](https://formulae.brew.sh/cask/iterm2) via Homebrew
5. Install [oh-my-zsh](https://ohmyz.sh/#install)
6. Install [Visual Studio Code](https://code.visualstudio.com/)

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
1. Start Visual Studio Code
2. Press ``CMD + SHIFT + P`` to open Command Palette
3. Type ``Shell``
4. Select ``Shell Command: Install code in PATH``

**Now you can open a file from terminal command in Visual Studio Code**  
``code .``

## Configure oh-my-zsh & iTerm
1. Open .zshrc file ``code ~/.zshrc``
2. Copy the content from this repository
3. Import [Halcyon Color Scheme](https://halcyon-theme.netlify.app/) (You can use this for many code editors as well as terminals)
4. Import JSON-File as a profile in iTerm
5. Change the home path of located code/ repositories