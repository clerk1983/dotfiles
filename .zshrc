#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/Users/akira/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall


#############
### Alias ###
#############
alias ls='ls --color=auto'
alias l='ls'
alias ll='ls -l'
alias la='ls -a'
alias lla='ls -al'
alias lal='ls -al'
alias cl='clear'
alias rm="safe-rm"
alias Trash="~/.trash"
alias cp="cp -ip"
alias mv='mv -i'
alias scp="scp -p"
alias sc="screen"
alias gre="grep --color=auto -n -H -i -I"
alias vi='nvim'
alias v='nvim'
alias vim='nvim'
alias jutf='export LANG=ja_JP.UTF-8'
alias jeuc='export LANG=ja_JP.euc-jp'
alias findall="find / -type d -name 'mnt' -prune -o "

alias e='exa --icons'
alias l=e
alias ls=e
alias ea='exa -a --icons'
alias la=ea
alias ee='exa -aal --icons'
alias ll=ee
alias et='exa -T -L 3 -a -I "node_modules|.git|.cache" --icons'
alias lt=et
alias eta='exa -T -a -I "node_modules|.git|.cache" --color=always --icons | less -r'
alias lta=eta

alias g='git'
alias cat='bat'

# 現在の作業リポジトリをブラウザで表示する
alias hb='hub browse'
# リポジトリの一覧の中からブラウザで表示したい対象を検索・表示する
alias hbrl='hub browse $(ghq list | peco | cut -d "/" -f 2,3)'
# リポジトリのディレクトリへ移動
alias gcd='cd $(ghq root)/$(ghq list | peco)'
