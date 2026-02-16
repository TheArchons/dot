# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi

SAVEHIST=1000000000000000  # Save most-recent 10000 lines
HISTFILE=~/.zsh_history

# add /home/archons/.cargo/bin to the path
export PATH="$HOME/.cargo/bin:$PATH"

# add sudo cargo
export PATH="/root/.cargo/bin:$PATH"

# add nvidia toolkit to the path
export PATH="/opt/cuda/bin:$PATH"

# add ollama to the path
export PATH="$HOME/applications/ollama:$PATH"

# add ruby to path
export PATH="/home/archons/.local/share/gem/ruby/3.0.0/bin:$PATH"

# add general scripts to path
export PATH="/home/archons/code/scripts/general:$PATH"

# add npm-global to path $HOME/.npm-global
export PATH="$HOME/.npm-global/bin:$PATH"

# add v2ray to path
export PATH="$HOME/apps/v2rayN-linux-64:$PATH"

# set dlph to autorun dolphin without outputting text to the terminal
alias dlph="nohup dolphin . >/dev/null 2>&1 &"

# set nvim as the default editor
export EDITOR=nvim

# set l to eza
alias l="eza"

# set ll to eza -l
alias ll="eza -l"

# set c to clear
alias c="clear"

# set ai13b to run ollama run llama2:13b
alias ai13b="ollama run llama2:13b"

# set aiu to run ollama run llama2-uncensored
alias aiu="ollama run llama2-uncensored"

# remind me to use trash-cli instead of rm
alias rm="echo 'rm is cringe tbh'"

# shorten trash-cli commands
alias tp="trash-put"
alias tl="trash-list"
alias tr="trash-restore"

# set rb to run ruby
alias rb="ruby"

# set ra to run rails
alias ra="rails"

# set nre to run rebuild script
alias nre="zsh /etc/nixos/rebuild"

# systemd things

# set sl to systemctl 
alias sl="systemctl"

# set jl to journalctl 
alias jl="journalctl"

# use aliases in sudo
alias sudo='sudo '

insert_last_output() {
  LBUFFER+="$(eval $(fc -ln -1))"
}
zle -N insert_last_output
bindkey '^L' insert_last_output  # Ctrl+L

alias srch='sudo dnf search'

alias inst='sudo dnf install'

[ "$TERM" = "xterm-kitty" ] && alias ssh="kitty +kitten ssh"

# use better file selection
export GTK_USE_PORTAL=1

# flatpack

export XDG_DATA_DIRS=$XDG_DATA_DIRS:/usr/share:/var/lib/flatpak/exports/share:$HOME/.local/share/flatpak/exports/share

# eval "$(rbenv init - zsh)"

eval "$(zoxide init zsh)"

eval "$(starship init zsh)"

[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


# export PATH="$HOME/.jenv/bin:$PATH"
# eval "$(jenv init -)"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

eval "$(atuin init zsh --disable-up-arrow)"
export PATH="/opt/homebrew/opt/trash-cli/bin:$PATH"

export PATH="/Users/archons/.local/bin:$PATH"

# Created by `pipx` on 2025-07-19 15:55:43
export PATH="$PATH:/Users/archons/.local/bin"
export PGDATA="/Users/archons/code/postgres"

source /Users/archons/.cargo/env

# bun completions
[ -s "/Users/archons/.bun/_bun" ] && source "/Users/archons/.bun/_bun"

[ -f "/Users/archons/.ghcup/env" ] && . "/Users/archons/.ghcup/env" # ghcup-env
