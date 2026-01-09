alias dotfiles="git --git-dir=$XDG_DATA_HOME/dotfiles/ --work-tree=$HOME"
alias d="dotfiles"

alias dcmsg="dotfiles commit -m "
alias dcn!="dotfiles commit -v --no-edit --amend "
alias dlogs="dotfiles log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
alias dst="dotfiles status"

# print each PATH entry on a separate line
alias printpath='print -rl $path'

alias cat="bat"
alias catp="bat -p"
alias lc="exa --long --header --icons -s type"
alias ls="lsd"
alias rg='rg --smart-case'
alias rgf='rg --files | rg --smart-case --sort path'
alias vi="nvim"
alias vim="nvim"
alias python="python3"
alias pip="pip3"
alias clr="clear && printf '\e[3J'"
alias ssh-hosts="ggrep -P \"^Host ([^*]+)$\" $HOME/.ssh/config | sed 's/Host //'"
######alias tmux='TERM=xterm-256color tmux -f "$XDG_CONFIG_HOME"/tmux/tmux.conf'
alias top="btm"
alias tf="terraform"
alias tg="terragrunt"
alias groot='cd $(git rev-parse --show-toplevel)'
alias brew-list-version="brew list --formulae | xargs brew info --json | jq -r '[\"name\", \"latest\", \"installed version(s)\"],(.[] | [ .name, .versions.stable, (.installed[] | .version) ])| @tsv'"
alias prod_region="echo -e 'us-east-1    (US)\neu-central-1    (EU)\nap-south-1    (IN)\nap-southeast-1    (SG)\nap-southeast-2    (AU)\nap-northeast-1    (JP)\nme-central-1    (ME)'"
alias gt="git tag"
alias gpo="git push origin"
