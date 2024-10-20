#
# Picobug ZSH
#

SPACESHIP_PROMPT_ORDER=(
  time          # Time stamps section
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  node          # Node.js section
  golang        # Go section
  php           # PHP section
  docker        # Docker section
  pyenv         # Pyenv section
  kubectl       # Kubectl context section
  exec_time     # Execution time
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_TIME_SHOW=true
export VIRTUALBOX_DISK_SIZE="2048"
export VIRTUALBOX_MEMORY_SIZE="768"
unalias -m 'sudo'
alias sudo='sudo '
unalias -m 'vi'
unalias -m 'vim'
if [ "$(command -v meld)" ]; then
  export DIFFPROG=meld
elif [ "$(command -v nano)" ]; then
  export EDITOR="$(which nano)"
elif [ "$(command -v vim)" ]; then
  export EDITOR="$(which vim)"
  alias vi="vim"
elif [ "$(command -v nvim)" ]; then
  export EDITOR="$(which nvim)"
  alias vi="nvim"
  alias vim="nvim"
fi
if [ "$(command -v mkcert)" ]; then
  export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
fi
if [ "$(command -v bat)" ]; then
  unalias -m 'cat'
  alias cat='bat -pp --theme="Nord"'
fi
if [ "$(command -v batcat)" ]; then
  unalias -m 'cat'
  alias cat='batcat -pp --theme="Nord"'
fi
if [[ "$(command -v starship)" ]]; then
  eval "$(starship init zsh)"
fi
if [[ "$(command -v fnm)" ]]; then
  unalias -m 'nvm'
  alias nvm='fnm'
  eval "$(fnm env --use-on-cd)"
  mkdir -p ~/.zfunc
  if [ ! -f ~/.zfunc/_fnm ]; then
    fnm completions --shell=zsh > ~/.zfunc/_fnm
  fi
  fpath+=~/.zfunc
fi
if [[ "$(command -v gh)" ]]; then
  mkdir -p ~/.zfunc
  if [ ! -f ~/.zfunc/_gh ]; then
    gh completion -s zsh >  ~/.zfunc/_gh
  fi
  fpath+=~/.zfunc
fi
if [[ "$(command -v doggo)" ]]; then
  mkdir -p ~/.zfunc
  if [ ! -f ~/.zfunc/_doggo ]; then
    doggo completions zsh > ~/.zfunc/_doggo
  fi
  fpath+=~/.zfunc
fi
if [[ "$(command -v glab)" ]]; then
  mkdir -p ~/.zfunc
  if [ ! -f ~/.zfunc/_glab ]; then
    glab completion -s zsh >  ~/.zfunc/_glab
  fi
  fpath+=~/.zfunc
fi
if [[ "$(command -v pyenv)" ]]; then
  eval "$(pyenv init - --no-rehash zsh)"
fi
if [[ "$(command -v kubectl)" ]]; then
  kubectl () {
    command kubectl $*
    if [[ -z $KUBECTL_COMPLETE ]]
    then
      source <(command kubectl completion zsh)
      KUBECTL_COMPLETE=1 
    fi
  }
fi
if [[ "$(command -v minikube)" ]]; then
  minikube () {
    command minikube $*
    if [[ -z $MINIKUBE_COMPLETE ]]
    then
      source <(command minikube completion zsh)
      MINIKUBE_COMPLETE=1 
    fi
  }
fi
if [[ "$(command -v pnpm)" ]]; then
  export PNPM_HOME="/home/picobug/.local/share/pnpm"
  case ":$PATH:" in
    *":$PNPM_HOME:"*) ;;
    *) export PATH="$PNPM_HOME:$PATH" ;;
  esac
fi
if [[ -d ~/.zfunc/completions ]]; then
  fpath+=~/.zfunc/completions
fi
