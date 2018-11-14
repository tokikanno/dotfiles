# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="aussiegeek"
# ZSH_THEME="agnoster"
ZSH_THEME="rkj-repos"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/home/toki/.local/bin"
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
alias gr="grep -r"
alias vim="/usr/local/bin/vim -p"
alias vi="/usr/local/bin/vim -p"

export PYTHONPATH=/home/toki/dev
export DJANGO_SETTINGS_MODULE=pinkoi.settings

# plugins=(zsh-autosuggestions)
plugins=(… zsh-completions)
autoload -U compinit && compinit

# turn off fucking Ctrl+S as stop flow control
stty stop undef
stty -ixon

[ -s "/home/toki/.scm_breeze/scm_breeze.sh" ] && source "/home/toki/.scm_breeze/scm_breeze.sh"

export FZF_CTRL_T_COMMAND='ag -g ""'
export FZF_DEFAULT_COMMAND='ag -g ""'

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# override default behavior from oh-my-zsh
alias ggpull='git pull origin --commit --no-edit $(git_current_branch)'


alias jsl="eslint --no-eslintrc --env browser,es6,amd,phantomjs,jquery --global clients,module,webkitSpeechRecognition,Modernizr,_gaq,ga,dataLayer,fbq,FB,gTrackEvent,l10n,d3,_,pinkoi,PRODUCTION,NAMESPACE,casper,__utils__ --rule 'comma-dangle:[2],no-cond-assign:[2],no-debugger:[2],no-dupe-args:[2],no-dupe-keys:[2],no-duplicate-case:[2],no-empty-character-class:[2],no-ex-assign:[2],no-extra-semi:[2],no-func-assign:[2],no-inner-declarations:[2],no-invalid-regexp:[2],no-irregular-whitespace:[2],no-negated-in-lhs:[2],no-obj-calls:[2],no-regex-spaces:[2],no-sparse-arrays:[2],no-unexpected-multiline:[2],no-unreachable:[2],use-isnan:[2],valid-typeof:[2],curly:[2],guard-for-in:[2],no-div-regex:[2],no-empty-pattern:[2],no-extra-label:[2],no-fallthrough:[2],no-floating-decimal:[2],no-lone-blocks:[2],no-native-reassign:[2],no-unused-labels:[2],no-undef:[2,{typeof: true}],no-use-before-define:[2],no-unused-vars:[2,{args:'none'}]' -c .eslintrc.json"

alias jslf='jsl --fix'
