# Handle loading on Apple Silicon
if [[ "$(uname -m)" == "arm64" ]]; then  
  export ZPLUG_HOME=/opt/homebrew/opt/zplug
  source $ZPLUG_HOME/init.zsh
else
  source $HOME/.zplug/init.zsh
fi

# Feature rich syntax highlighting
# https://github.com/zdharma-continuum/fast-syntax-highlighting
zplug "zdharma-continuum/fast-syntax-highlighting", defer:2

# macOS utility commands
# https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/osx
# zplug "plugins/osx", from:oh-my-zsh

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
    echo
fi

zplug load
