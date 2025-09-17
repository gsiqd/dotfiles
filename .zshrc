# Environment Variables
set -o vi
export VISUAL=vim
export EDITOR=vim
export TERM="wezterm"
export BROWSER="librewolf"
export LC_ALL="en_US.UTF-8"
# History
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_SPACE # Don't save when prefixed with space
setopt HIST_IGNORE_DUPS  # Don't save duplicate lines
setopt SHARE_HISTORY     # Share history between sessions
# Main opts
unsetopt beep
setopt globdots
unsetopt prompt_sp
# Prompt
fpath+=($HOME/.zsh/pure)
autoload -U promptinit; promptinit
prompt pure
# Sourcing
source <(fzf --zsh)
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
# Completion
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors
zstyle ':completion:*' menu select
zstyle ':completion:*' special-dirs true
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33
# The following lines were added by compinstall
zstyle :compinstall filename '/home/gsiq/.zshrc'
