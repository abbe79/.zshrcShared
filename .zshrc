# zsh plugins
# https://github.com/zsh-users/zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-autosuggestions

if [[ `uname` == "Darwin" ]]; then
	[ -f /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	[ -f /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh ]         && source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh

	[ -f /usr/local/bin/youtube-dl ] && alias youtube-dl-music="youtube-dl -f 'bestaudio[ext=m4a]'"

	echo 'Welcome at home!'
elif [[ `uname` == "Linux" ]]; then
	[ -f ~/.zshStuff/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ] && source ~/.zshStuff/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
	[ -f ~/.zshStuff/zsh-autosuggestions/zsh-autosuggestions.zsh ]         && source ~/.zshStuff/zsh-autosuggestions/zsh-autosuggestions.zsh

	alias internet-start='bsh-proxy --start'
	alias internet-stop='bsh-proxy --stop'

	echo 'Have a prosperous workday!'
fi

# bind keys
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# zsh options
setopt ALWAYS_TO_END
setopt AUTO_CD
setopt AUTO_PUSHD
setopt COMBINING_CHARS
setopt COMPLETE_IN_WORD
setopt CORRECT
setopt CORRECT_ALL
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_REDUCE_BLANKS
setopt HIST_VERIFY
setopt INC_APPEND_HISTORY
setopt INTERACTIVE_COMMENTS
setopt LONG_LIST_JOBS
setopt NO_FLOW_CONTROL
setopt PROMPT_SUBST
setopt SHARE_HISTORY
#unsetopt NOMATCH

# variables 
HISTSIZE=4000
SAVEHIST=5000
HISTFILE=~/.zsh_history
PROMPT='%F{238}%n@%m%f %~ %F{238}%#%f '
RPROMPT='%(?.%F{green}√.%F{red}%?)%f'
export CLICOLOR=1

# aliases
alias cp='cp -i'                 # prompt when overriding files
alias ff='find . -type f -name'  # find file named $1
alias h='history'                # history shortcut
alias l='ls -lFh'                # size,show type,human readable
alias la='ls -lAFh'              # long list,show almost all,show type,human readable
alias ll='ls -l'                 # long list
alias lr='ls -tRFh'              # sorted by date,recursive,show type,human readable
alias lt='ls -ltFh'              # long list,sorted by date,show type,human readable
alias mv='mv -i'                 # prompt when overriding files
alias rm='rm -i'                 # always ask for confirmation
alias grep="grep --color=auto"   # GREP_OPTIONS is deprecated
alias fgrep="fgrep --color=auto" # GREP_OPTIONS is deprecated
alias egrep="egrep --color=auto" # GREP_OPTIONS is deprecated
alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

# The following lines were added by compinstall
zstyle ':completion:*' completer _complete _ignored
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}'
zstyle ':completion:*' special-dirs true
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
