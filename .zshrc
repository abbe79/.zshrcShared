# zsh plugins
# https://github.com/zsh-users/zsh-syntax-highlighting
# https://github.com/zsh-users/zsh-autosuggestions

if [[ `uname` == "Darwin" ]]; then
	if [ -f /opt/homebrew/bin/yt-dlp ]; then
		alias yt-dlp-music="yt-dlp -f 'bestaudio[ext=m4a]'"
	fi
	if [ -f /opt/homebrew/bin/yt-dlp ]; then
		alias yt-dlp-video="yt-dlp -f 'bestvideo[ext=mp4]+bestaudio[ext=m4a]'"
	fi
	echo 'Welcome at home!'
elif [[ `uname` == "Linux" ]]; then
	alias internet-start='bsh-proxy --start'
	alias internet-stop='bsh-proxy --stop'
	alias motd='run-parts /etc/update-motd.d'
	alias mountUdrive='sudo mount -v -t cifs -o username=$USER,vers=2.1,uid=$USER,forceuid,gid=$GID,forcegid,rw //trtna001.euce.corp.bshg.com/home$/$USER /home/EU.BSHG.COM/$USER/Udrive'

	bindkey '^[OA' history-beginning-search-backward
	bindkey '^[OB' history-beginning-search-forward
	bindkey '^[OC' forward-word
	echo 'Have a prosperous workday!'
fi

# bind keys
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward
bindkey '^[[C' forward-word

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
HISTSIZE=10000000
SAVEHIST=10000000
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

if [ -f ~/.zshrcShared/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source ~/.zshrcShared/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f ~/.zshrcShared/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source ~/.zshrcShared/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
if [ -f ~/.myDotfiles/.zshrcShared/zsh-autosuggestions/zsh-autosuggestions.zsh ]; then
	source ~/.myDotfiles/.zshrcShared/zsh-autosuggestions/zsh-autosuggestions.zsh
fi
if [ -f ~/.myDotfiles/.zshrcShared/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh ]; then
	source ~/.myDotfiles/.zshrcShared/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi
