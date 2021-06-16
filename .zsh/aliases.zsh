# Command aliases
alias g=git
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
alias lh='ls -d .*' # Hidden files/directories only
alias config='git --git-dir=$HOME/.cfg/ --work-tree=$HOME' # Manage dotfiles

# npm commands
alias npms='cat package.json | jq .scripts'
alias npmv='cat package.json | jq .version'
alias npmbin='$(npm bin)'
alias npml='npm list --depth=0'
alias npmrmi='rm -rf node_modules && npm i'

# util comands
alias duf='du -sh $(du -s * | sort -n | cut -f2-)'

alias chg='awchangelog --overwrite'
