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
export VIRTUALBOX_HOSTONLY_CIDR="192.168.99.1/24"
export EDITOR="/usr/bin/vi"
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
zstyle ':completion:*:*:*:*:*' menu select
#eval "$(heroku autocomplete:script zsh)"
#export PHP_CS_FIXER_IGNORE_ENV=1