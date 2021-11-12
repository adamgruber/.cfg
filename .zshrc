source ~/.zsh/colors.zsh
source ~/.zsh/setopt.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/prompt.zsh
# source ~/.zsh/completion.zsh
source ~/.zsh/aliases.zsh
# source ~/.zsh/bindkeys.zsh
# source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/zsh_hooks.zsh
# source ~/.zsh/zaw/zaw.zsh
source ~/.zsh/zplug.zsh

# Ruby
#if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

export PATH=bin:script:~/.bin:$PATH

# Add Homebrew to PATH on Apple Silicon
if [[ "$(uname -m)" == "arm64" ]]; then
  export PATH="/opt/homebrew/bin:${PATH}"
fi

# if [ $ITERM_SESSION_ID ]; then
#   export PROMPT_COMMAND='echo -ne "\033];${PWD##*/}\007"; ':"$PROMPT_COMMAND";
# fi

# precmd() {
#  if [[ -n "$TMUX" ]]; then
#    tmux setenv "$(tmux display -p 'TMUX_PWD_#D')" "$PWD"
#  fi
# }

