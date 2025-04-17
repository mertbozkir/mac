# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
#if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
#  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
#fi

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"


#fcd(){
#	local dir
#	dir=$(find ${1:-.} -type d -not -path '*/\.*' 2> /dev/null | fzf +m) && cd "$dir"}




# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(virtualenv wakatime git zsh-syntax-highlighting zsh-autosuggestions python web-search kubectl history)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#function virtualenv_prompt_info { 
#    [ $VIRTUAL_ENV ] && echo '('`basename $VIRTUAL_ENV`') '
#}

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="/usr/local/bin/docker-compose:$PATH"
# Created by `pipx` on 2024-05-24 19:14:13
export PATH="$PATH:/Users/mertbozkir/.local/bin"
# alias python="/opt/homebrew/bin/python3.11"
export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/homebrew/bin/python3.11/site-packages"
#export VIRTUAL_ENV_DISABLE_PROMPT=1

# eval "$(oh-my-posh init zsh)"
#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
#[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

#autoload -Uz compinit
#zstyle ':completion:*' menu select
#fpath+=~/.zfunc

autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /opt/homebrew/bin/terraform terraform
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"

# Added by Windsurf
export PATH="/Users/mertbozkir/.codeium/windsurf/bin:$PATH"

bindkey -e
bindkey '\e\e[C' forward-word
bindkey '\e\e[D' backward-word 

# aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias u='cd ~'
alias f='fastfetch'
alias s='speedtest --secure'
alias tsup='tailscale up'
alias tsdown='tailscale down'


alias la='(ls -lAFh --color=always | grep --color=never '^d' | sort -k9; ls -lAFh --color=always | grep --color=never -v '^d' | sort -k9)'
alias l='(ls -ltAFh --color=always | grep --color=never '^d'; ls -ltAFh --color=always | grep --color=never -v '^d')'
alias rm='rm -vi'
alias rmf='rm -rf'
alias cp='cp -vi'
alias mv='mv -vi'
alias h='history'
alias c='clear'
alias cs='clear && (ls -lAFh --color=always | grep --color=never '^d' | sort -k9; ls -lAFh --color=always | grep --color=never -v '^d' | sort -k9)'

alias findps='ps -ax | grep'
alias tmuxn='tmux new-session -s'
alias tmuxa='tmux attach -t'
alias tree='tree -Ch'
alias jn='jupyter notebook'
alias jl='jupyter lab'
alias weather="curl -s 'wttr.in/istanbul?F'"
alias a="AWS_PROFILE" 

alias venv="source .venv/bin/activate"
alias dvenv="deactivate"
alias truba="ssh -l mbozkir 172.16.6.13"
alias rbpass="rm -f ~/.gnupg/public-keys.d/pubring.db.lock"
alias cr="cursor ."

# Function to compile a C++ source file, place the output in the "out" dir, and print the binary name.
x() {
    # Usage check: require at least one argument.
    if [ $# -eq 0 ]; then
        echo "Usage: cpp <source-file>.cpp"
        return 1
    fi

    # Verify the file exists.
    if [ ! -f "$1" ]; then
        echo "File not found: $1"
        return 1
    fi

    # Create the output directory if it doesn't exist.
    mkdir -p out

    # Get the base name of the file without the .cpp extension.
    local base
    base=$(basename "$1" .cpp)

    # Compile the file using C++20 standard.
    g++ -std=c++20 "$1" -o "out/$base"
    
    # Check if the compilation was successful.
    if [ $? -eq 0 ]; then
        echo "Compiled: out/$base"
	./out/$base
    else
        echo "Compilation failed for $1"
        return 1
    fi
}

alias dps='docker ps'
alias dpa="docker ps -a"
# Get container logs
# usage: dlogs my-container
function dlogs() { docker logs $1 }

# Remove all containers
function drmf() { docker rm -f $(docker ps -a -q); }

# Open this file in VS Code
alias oz='vi ~/.zshrc'
# Refreshes zsh profile
alias ref='source ~/.zshrc'

alias gc="git commit -m" 
alias ga="git add"  
alias gs="git status"

alias shutdown='sudo shutdown -h now'
alias reboot='sudo shutdown -r now'
alias finder='open'
# pythonpaths
#export PYTHONPATH="/Users/mertbozkir/consultations/valuehub-crew-ai-project/crewai-api/src:$PYTHONPATH":
export PYTHONPATH="/Users/mertbozkir/kloia/elevenplus-backend/src:$PYTHONPATH"
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
export PYTHONPATH="/Users/mertbozkir/kloia/call-center-demo/src:$PYTHONPATH"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme
source /opt/homebrew/share/powerlevel10k/powerlevel10k.zsh-theme

export PKG_CONFIG_PATH="/usr/local/lib/pkgconfig:/opt/homebrew/lib/pkgconfig:$PKG_CONFIG_PATH"
export DYLD_LIBRARY_PATH="/usr/local/lib:/opt/homebrew/lib:$DYLD_LIBRARY_PATH"

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
