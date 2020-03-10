export DATA=$HOME/data
export DOTFILES=$HOME/dotfiles
#source $DOTFILES/config/zsh_shared
source $DOTFILES/config/$HOST/zshrc
export HOSTNAME=$(hostname) # Needed for TMUX
export HOST=$(hostname) # Needed for various usages below and elsewhere 
#export REMOTE=gabe-ubunutu.local #192.168.1.3
export EXT_DRIVE='/Volumes/128GB_2'
alias push='rsync -avrotyie ssh ~/synced/pix2code gabe@$REMOTE:/home/gabe/synced/pix2code'
alias pull='rsync -avrotyie ssh gabe@$REMOTE:/home/gabe/synced/pix2code ~/synced/pix2code'
# -Y for trusted X11 forwarding.
alias sshj='ssh gabe@$REMOTE -Y -t tmux a'
alias sshjn='ssh gabe@$REMOTE -Y -t tmux'

# https://stackoverflow.com/questions/50369959/systemerror-error-return-without-exception-set-when-using-requests-and-debugge
export PYDEVD_USE_FRAME_EVAL=NO
#export AUTOSUGGESTION_HIGHLIGHT_STYLE='fg=250'
#alias cat='bat'
#alias man='tldr'
#-f indicates using the full command
alias pk='pkill -f -9 '
export PATH="~/Downloads/android-platform-tools:/usr/local/opt/opencv3/bin:$PATH"
# Autojumpi
 [ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
# End Autojump

#alias pk='pkill'
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export PATH="/opt/local/bin:/usr/local/sbin:$PATH"
setopt HIST_SAVE_NO_DUPS
export SAVEHIST=10000000
export HISTFILE="$DOTFILES/history/$HOST/zsh_history"
export PYTHONSTARTUP=$DOTFILES/config/$HOSTNAME/pythonrc
export PATH="/usr/local/bin:$PATH"
export WORKON_HOME=~/dotfiles/virtualenvs
export VIRTUALENVWRAPPER_PYTHON=python3
#source /usr/local/bin/virtualenvwrapper.sh 
export PYTHONPATH=$PYTHONPATH
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
#source "$DOTFILES/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh"

 #Old $PATH
# /usr/local/bin:/usr/local/bin:/Users/gabe/Dropbox/Computer_Vision/bin:/usr/local/bin:/usr/local/rvm/gems/ruby-1.9.3-p194/bin:/usr/local/rvm/gems/ruby-1.9.3-p194@global/bin:/usr/local/rvm/rubies/ruby-1.9.3-p194/bin:/usr/local/rvm/bin:/usr/bin:/bin:/Applications/Android Studio.app/sdk/platform-tools:/Applications/Android Studio.app/sdk/platform-tools:/Applications/Android Studio.app/sdk/platform-tools

# Path to your oh-my-zsh installation.
export ZSH="$DOTFILES/oh-my-zsh"
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
# export UPDATE_ZSH_DAY=13

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
plugins=(autojump zsh-autosuggestions fzf command-time)

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
alias ll='ls -la'
[[ -s /usr/local/etc/profile.d/autojump.sh ]] && . /usr/local/etc/profile.d/autojump.sh
#source ~/.zsh/fish-prompt
#PROMPT=~/.zsh/fish-prompt
export PATH="/usr/local/bin:$PATH"

# Add 'code' as in vscode
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# OpenCV3 setup:
export PATH="/usr/local/opt/opencv3/bin:$PATH"
export LDFLAGS="-L/usr/local/opt/opencv3/lib"
export CPPFLAGS="-I/usr/local/opt/opencv3/include"
export PKG_CONFIG_PATH="/usr/local/opt/opencv3/lib/pkgconfig"
# #end OpenCV3
export PATH="/usr/local/opt/opencv3/bin:$PATH"
source "$DOTFILES/config/bash_aliases"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=cyan"
# If command execution time above min. time, plugins will not output time.
export ZSH_COMMAND_TIME_MIN_SECONDS=5

# Message to display (set to "" for disable).
export ZSH_COMMAND_TIME_MSG="Execution time: %s sec"
setopt PROMPT_SUBST

# Escape square brackets by default. http://kinopyo.com/en/blog/escape-square-bracket-by-default-in-zsh
alias rake='noglob rake'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
#source $DOTFILES/zaw/zaw.zsh
#bindkey '^R' zaw-history
#bindkey -M filterselect '^R' down-line-or-history
#bindkey -M filterselect '^S' up-line-or-history
#bindkey -M filterselect '^E' accept-search
#bindkey -M filterselect 'Enter' accept-search
#zstyle ':filter-select:highlight' matched fg=green
#zstyle ':filter-select' max-lines 10 
#zstyle ':filter-select' case-insensitive yes # enable case-insensitive 
#zstyle ':filter-select' extended-search yes # see below



### ZNT's installer added snippet ###
#fpath=( "$fpath[@]" "$HOME/.config/znt/zsh-navigation-tools" )
#autoload n-aliases n-cd n-env n-functions n-history n-kill n-list n-list-draw n-list-input n-options n-panelize n-help
#autoload znt-usetty-wrapper znt-history-widget znt-cd-widget znt-kill-widget
#alias naliases=n-aliases ncd=n-cd nenv=n-env nfunctions=n-functions nhistory=n-history
#alias nkill=n-kill noptions=n-options npanelize=n-panelize nhelp=n-help
#zle -N znt-history-widget
#bindkey '^R' znt-history-widget
#setopt AUTO_PUSHD HIST_IGNORE_DUPS PUSHD_IGNORE_DUPS
#zstyle ':completion::complete:n-kill::bits' matcher 'r:|=** l:|=*'
### END ###


#### HISTORY CONFIG #####
# zsh options
#Initial
setopt appendhistory autocd beep extendedglob nomatch notify
#history
HISTSIZE=100000000
SAVEHIST=100000000
setopt HIST_IGNORE_SPACE
setopt extended_history
setopt hist_expire_dups_first
setopt hist_ignore_dups # ignore duplication command history list
setopt hist_ignore_space
setopt hist_verify
setopt inc_append_history
setopt share_history # share command history data
#dirs
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
setopt auto_name_dirs
#appearance
setopt multios
setopt cdablevarS
setopt prompt_subst
#misc
setopt long_list_jobs
#correction
setopt correct_all
#completion
setopt auto_menu         # show completion menu on succesive tab press
setopt complete_in_word
setopt completealiases
setopt always_to_end
#syml
setopt chaselinks
#stop pissing me off
#### END HISTORY #######

POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
PROMPT='%{$fg[$user_color]%}$(_fishy_collapsed_wd)%{$reset_color%}%(!.#.>)'
# Don't show $USER@$HOSTNAME in prompt (https://www.maketecheasier.com/remove-user-hostname-terminal-prompt/): 
#PS1='\$ '

#PROMPT='$%{$fg[cyan]%}%c%{$reset_color%}'
# https://superuser.com/questions/49092/how-to-format-the-path-in-a-zsh-prompt
#PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%}'
#setopt prompt_subst
#PS1='%n@%m $(shrink-path -f)>'
#zstyle :prompt:shrink_path fish yes
