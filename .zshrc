# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

export DEFAULT_USER="$(whoami)"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

plugins=(git macos)

source $ZSH/oh-my-zsh.sh

# ALIASES NAVIGATION
alias ..="cd .."
alias cd..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."
alias ~="cd ~"
alias -- -="cd -"

# ALIASES OPEN
alias o="open ."
alias ll="ls -la -G"

# ALIASES GIT
alias g="git"
alias gs="git status"
alias gp="git pull"
alias gc="git commit"
alias gco="git checkout"
alias gup="git fetch && git pull"
alias gres="git restore --staged"
alias gmain="git checkout main"
alias gpull="git pull origin"
alias gpush="git push origin"
alias gundo="git reset --soft HEAD~"
alias glist="git branch -vv"
alias gprune="git fetch --prune"
alias git-cleanup="git fetch --prune && for branch in \$(git branch --format '%(refname:short)' | grep -v 'main' | grep -v 'master'); do upstream=\$(git for-each-ref --format='%(upstream:short)' refs/heads/\$branch); if [ -z \"\$upstream\" ]; then echo '🗑  Deleting local-only branch:' \$branch; git branch -d \$branch; elif ! git show-ref --verify --quiet refs/remotes/\$upstream; then echo '🗑  Deleting branch with gone upstream:' \$branch; git branch -d \$branch; fi; done"
alias gamend="git commit -av --amend --no-edit"

# ALIASES ZSH
alias zshconfig="code ~/.zshrc"

# ALIASES BREW
alias install="brew install"
alias uninstall="brew uninstall"

# ALIASES PYGMENTIZE
alias c='pygmentize -O style=monokai -f console256 -g'

# FUNCTIONS
function hl (){
    highlight -O rtf "$1" | pbcopy
    echo "code is copied to clipboard"
}

# Create a new directory and enter it
function md() {
	mkdir -p "$@" && cd "$@"
}

function code {
    open -a '/Volumes/Macintosh HD/Applications/Visual Studio Code.app' "$1"
}

# Set default terminal directory on start up of terminal
cd ~/Code