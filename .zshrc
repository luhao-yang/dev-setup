# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="~/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)



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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# apply bash_profile, if problems occur, remove this 
if [ -f ~/.bash_profile ]; then 
    . ~/.bash_profile;
fi



# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"




# ********************************** Powerlevel9K config *************************************



# ---------------- this sequence sould not be tampered


POWERLEVEL9K_MODE="nerdfont-complete"
POWERLEVEL9K_ALWAYS_SHOW_CONTEXT=false

# ------------------


POWERLEVEL9K_PROMPT_ON_NEWLINE=true

POWERLEVEL9K_PROMPT_ON_NEWLINE=true
POWERLEVEL9K_RPROMPT_ICON_LEFT=true

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs )
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status history time )

POWERLEVEL9K_PROMPT_ADD_NEWLINE=true

# time os_icon
POWERLEVEL9K_NODE_VERSION_FOREGROUND="black"
POWERLEVEL9K_TIME_ICON=""
POWERLEVEL9K_NEWLINE_ICON="\uF09C"
POWERLEVEL9K_TIME_ICON_COLOR='green'

POWERLEVEL9K_LEFT_PROMPT_FIRST_SEGMENT_START_SYMBOL="\ue0b2"

POWERLEVEL9K_RIGHT_PROMPT_LAST_SEGMENT_END_SYMBOL="\ue0b0"

POWERLEVEL9K_WHITESPACE_BETWEEN_LEFT_SEGMENTS=" "
POWERLEVEL9K_WHITESPACE_BETWEEN_RIGHT_SEGMENTS=""

POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR_ICON="\ue0b0"
POWERLEVEL9K_LEFT_SUBSEGMENT_SEPARATOR_ICON="\ue0b1"
POWERLEVEL9K_RIGHT_SEGMENT_SEPARATOR_ICON="\ue0b2"
POWERLEVEL9K_RIGHT_SUBSEGMENT_SEPARATOR_ICON="\ue0b3"

POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX_ICON="%F{blue}"$'\u256D\u2500'"%F{white}"
POWERLEVEL9K_MULTILINE_LAST_PROMPT_PREFIX_ICON="%F{blue}"$'\u2570\uf460'"%F{white}"

POWERLEVEL9K_USER_ROOT_ICON="\uF09C"
POWERLEVEL9K_USER_SUDO_ICON="\uF09C"
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"

#POWERLEVEL9K_CUSTOM_SEGMENT="echo "
#POWERLEVEL9K_CUSTOM_SEGMENT_BACKGROUND="black"
#POWERLEVEL9K_CUSTOM_SEGMENT_FOREGROUND="white"

POWERLEVEL9K_VCS_GIT_ICON='\uf113 '
POWERLEVEL9K_VCS_GIT_GITHUB_ICON='\uf113 '
POWERLEVEL9K_VCS_GIT_BITBUCKET_ICON='\uf113 '
POWERLEVEL9K_VCS_GIT_GIT_GITLAB_ICON='\uf113 '



# **********************************************************************************************


ZSH_THEME='powerlevel9k/powerlevel9k'


# zsh autocomletions
  if type brew &>/dev/null; then
    FPATH=$(brew --prefix)/share/zsh-completions:$FPATH

    autoload -Uz compinit
    compinit
  fi


# Please note if you plan to set a POWERLEVEL9K_MODE to use a specific font, as described in this section of the Wiki, 
# you must set the MODE before OMZ is loaded (look for source $ZSH/oh-my-zsh.sh in your ~/.zshrc).
source $ZSH/oh-my-zsh.sh


source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme