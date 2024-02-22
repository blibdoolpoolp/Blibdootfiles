
# If you come from bash you might have to change your $PATH.
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:/usr/local/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:$PATH
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST
export BACKUP=/mnt/bigplex/backups/albuntoo
# Mouse support
# Comment next line after first run
wget http://stchaz.free.fr/mouse.zsh
. ./mouse.zsh
zle-toggle-mouse

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export ODRIVE="$HOME/OneDrive/linshare"
# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="random"

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
zstyle ':omz:update' mode reminder  # just remind me to update when it's time

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
HIST_STAMPS="dd/mm/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(zsh-autosuggestions fast-syntax-highlighting command-not-found sudo copyfile colored-man-pages zsh-eza fzf colorize dirhistory catimg zsh-interactive-cd)

export ZSH_COLORIZE_STYLE="colorful"
export ZSH_COLORIZE_CHROMA_FORMATTER="xterm-264colors"

export BAT_THEME="Dracula"

export AUTOCD=1

export FZF_BASE=/usr/bin/fzf
#export FZF_DEFAULT_COMMAND="--ansi --preview-window 'right:60%' --preview 'batcat --color=always --style=header,grid --line-range :300 {}'"
export FZF_DEFAULT_OPTS='--preview "batcat --style=numbers --color=always --line-range :500 {}"'
source $ZSH/oh-my-zsh.sh



# User configuration
export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8OA

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconf="nano ~/.zshrc"
alias omzconf="cd ~/.oh-my-zsh"
#alias lt="ls --tree"
#alias ll="ls -l"
alias rm='rm -I'
alias cp='cp -i'
alias rsync='rsync -Pavh'
alias mv='mv -i'
alias t='tail -f'
alias dud='du -d 1 -h'
alias duf='du -sh'
alias fd='find . -type d -name'
alias ff='find . -type f -name'
alias grep='grep --color'
alias sgrep='grep -R -n -H -C 5 --exclude-dir={.grit,.snv,CVS}'
# alias p='ps -f'
# alias -g H='\| head'
# alias -g T='\| tail'
# alias -g G='\| grep'
# alias -g L='\| less'
# alias -g M='\| MOST'
alias bat='batcat'
alias dcd='cd /opt/docker'
alias dports='docker ps --format "table {{.Names}}\t{{.Ports}}\t{{.Networks}}"'
alias sudo='sudo '
alias osync="onedrive --synchronize --single-directory 'linshare'"

#Functions
gsay() { if [[ "${1}" =~ -[a-z]{2} ]]; then local lang=${1#-}; local text="${*#$1}"; else local lang=${LANG%_*}; local text="$*";fi; mplayer "http://translate.google.com/translate_tts?ie=UTF-8&tl=${lang}&q=${text}" &> /dev/null ; }
refresh () { while true; do $@; sleep 1; clear; done; }

#Zsh Customizations
# Completions
zstyle ':completion::*:ls::*' fzf-completion-opts --preview='eval head {1}'
zstyle ':autocomplete:*' default-context history-incremental-search-backward
# Tab for fzf completion
bindkey '^I' fzf_completion

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
