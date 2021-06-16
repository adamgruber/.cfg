source $HOME/.zplug/init.zsh

# Feature rich syntax highlighting
# https://github.com/zdharma/fast-syntax-highlighting
zplug "zdharma/fast-syntax-highlighting", defer:2

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
