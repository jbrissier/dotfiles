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
export PATH=/usr/local/bin:/opt/local/bin:/opt/local/sbin:/Library/Frameworks/Python.framework/Versions/2.7/bin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/X11/bin:/usr/local/MacGPG2/bin:$HOME/.rvm/scripts/rvm:/usr/local/share/npm/bin

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/sbin #adding sbin to path

# add dotfile bin
PATH=~/dotfiles/bin:$PATH

#alias
alias gr=gradle


# TMUX

export TERM="xterm-256color"

alias jsonp="python -mjson.tool"
alias passgen="</dev/urandom tr -dc '12345!@#$%qwertQWERTasdfgASDFGzxcvbZXCVB' | head -c10; echo \"\""
alias it="echo '$(date "+%Y-%m-%d %H:%M:%S") - $1' >> ~/Desktop/interruppt.$(date +%Y-%m-%d).log"
alias gi="git add -i"
alias dm="docker-machine"
alias dc="docker-compose"
# adding boot2docker export
#export DOCKER_HOST=tcp://192.168.59.103:2376
#export DOCKER_CERT_PATH=/Users/jochenbrissier/.boot2docker/certs/boot2docker-vm
#export DOCKER_TLS_VERIFY=1
#eval "$(docker-machine env dev)"
