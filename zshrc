export PATH="/usr/local/opt/opencv3/bin:$PATH"
# Autojumpi
 [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# End Autojump

#alias pk='pkill'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH="/Developer/NVIDIA/CUDA-8.0.61/bin${PATH:+:${PATH}}"
export DYLD_LIBRARY_PATH="/Developer/NVIDIA/CUDA-8.0.61/lib\${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}"}
export DOTFILES="/Users/gabe/dotfiles"
#export PYTHONPATH=/usr/local/lib/python2.7/site-packages:$PYTHONPATH
# Does PYTHON3PATH mean anything? Who knows.
# export PYTHON3PATH=/usr/local/lib/python3.6/site-packages:$PYTHO3PATH
#export PYTHONPATH=/usr/local/lib/python3.6/site-packages:$PYTHO3PATH

export PATH=.:$PATH
function frameworkpython {
    if [[ ! -z "$VIRTUAL_ENV" ]]; then
        PYTHONHOME=$VIRTUAL_ENV /usr/local/bin/python "$@"
    else
        /usr/local/bin/python "$@"
    fi
}


# THis in included at the bottom to override everyone elses.: source ~/.bash_aliases
export CPATH=/usr/local/include
export LIBRARY_PATH=/usr/local/lib
export LD_LIBRARY_PATH=/usr/local/lib
source "$DOTFILES/.shared_functions"
source "$DOTFILES/.shared_rc"
source "$DOTFILES/.profile"
source "$DOTFILES/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

 #Old $PATH
# /usr/local/bin:/usr/local/bin:/Users/gabe/Dropbox/Computer_Vision/bin:/usr/local/bin:/usr/local/rvm/gems/ruby-1.9.3-p194/bin:/usr/local/rvm/gems/ruby-1.9.3-p194@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p194/bin:/usr/local/rvm/bin:/usr/bin:/bin:/Applications/Android Studio.app/sdk/platform-tools:/Applications/Android Studio.app/sdk/platform-tools:/Applications/Android Studio.app/sdk/platform-tools

# Path to your oh-my-zsh installation.
export ZSH="$DOTFILES/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it"ll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="robbyrussell"
ZSH_THEME="fishy"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions fzf-zsh)

# User configuration

export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
 export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR="vim"
# else
#   export EDITOR="mvim"
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#export PATH=$PATH:"/Applications/Android Studio.app/sdk/platform-tools"
 [[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
#source ~/.zsh/fish-prompt
#PROMPT=~/.zsh/fish-prompt
export PATH="/usr/local/bin:$PATH"

# OpenCV3 setup:
export PATH="/usr/local/opt/opencv3/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/opencv3/lib"
export CPPFLAGS="-I/usr/local/opt/opencv3/include"
export PKG_CONFIG_PATH="/usr/local/opt/opencv3/lib/pkgconfig"
# #end OpenCV3
export PATH="/usr/local/opt/opencv3/bin:$PATH"
source "$DOTFILES/.bash_aliases"
