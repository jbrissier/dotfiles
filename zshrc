# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="miloshadzic"


# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git osx)




source $ZSH/oh-my-zsh.sh


# Customize to your needs...

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/sbin #adding sbin to path

# add dotfile bin
PATH=~/dotfiles/bin:$PATH

#alias
alias gr=gradle
alias vi=nvim

# TMUX

export TERM="xterm-256color"

alias jsonp="python -mjson.tool"
alias passgen="</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10; echo \"\""
alias it="echo '$(date "+%Y-%m-%d %H:%M:%S") - $1' >> ~/Desktop/interruppt.$(date +%Y-%m-%d).log"
alias gi="git add -i"
alias dm="docker-machine"
alias dc="docker-compose"
export LANG="de_DE.UTF-8"  
export LC_COLLATE="de_DE.UTF-8"  
export LC_CTYPE="de_DE.UTF-8"  
export LC_MESSAGES="de_DE.UTF-8"  
export LC_MONETARY="de_DE.UTF-8"  
export LC_NUMERIC="de_DE.UTF-8"  
export LC_TIME="de_DE.UTF-8"  
export LC_ALL=  
# adding boot2docker export
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/jochenbrissier/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#eval "$(docker-machine env dev)"
#
# pyenv foo

alias wt="watson"
alias wts="watson start"
alias pes="pipenv shell"
alias lg="lazygit"
alias pg_start="launchctl load ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias pg_stop="launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.postgresql.plist"
alias ,,="!!:-1"

alias cat="bat"


export PATH="/usr/local/opt/node@10/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --type f'
export KUBE_EDITOR='nvim'
export ANSIBLE_NOCOWS=1

export PATH="$PATH:/Users/jochen/bin/:/Users/jochen/.composer/vendor/bin"

export PATH="/usr/local/opt/helm@2/bin:$PATH"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"

# Load pyenv into the shell by adding
# the following to ~/.zshrc:

eval "$(pyenv init -)"

export GOPATH=$HOME/dev/golang/
export KUBECONFIG=$HOME/.kube/main:$HOME/.kube/test

eval $(thefuck --alias)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jochen/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/jochen/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/jochen/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/jochen/Downloads/google-cloud-sdk/completion.zsh.inc'; fi
