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
export MACHINE_GITHUB_API_TOKEN="56659eff75e6f56d1e33b23fdee825f9e2cd5f38"
export VIRTUALBOX_DISK_SIZE="2048"
export VIRTUALBOX_MEMORY_SIZE="768"
export VIRTUALBOX_HOSTONLY_CIDR="192.168.99.1/24"
export EDITOR="/usr/bin/vi"
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
zstyle ':completion:*:*:*:*:*' menu select
#eval "$(heroku autocomplete:script zsh)"
#export PHP_CS_FIXER_IGNORE_ENV=1
moddir() {
  find "$1" -type d -exec chmod "$2" {} +
}
modiar(){
  fuser -n tcp "$1" | awk '{ print $2 }' | xargs -r kill
}
mampus(){
  find . -name "$1" -type d -prune -exec rm -rfv '{}' +
}
ganti() {
  sed -i -e "s/$2/$3/g" $1
}
kubectl () {
    command kubectl $*
    if [[ -z $KUBECTL_COMPLETE ]]
    then
        source <(command kubectl completion zsh)
        KUBECTL_COMPLETE=1 
    fi
}
minikube () {
    command minikube $*
    if [[ -z $MINIKUBE_COMPLETE ]]
    then
        source <(command minikube completion zsh)
        MINIKUBE_COMPLETE=1 
    fi
}
kubeup(){
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 && chmod +x minikube && mv minikube ~/.bin/minikube
  curl -Lo kubectl https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl && chmod +x kubectl && mv kubectl ~/.bin/kubectl
}
sampah() {
  rm -rfv "$HOME/.config/Code/Cache"
  rm -rfv ./node_modules/**/**/.cache/**
  ln -s /tmp/picobug "$HOME/.config/Code/Cache"
}

simple_cache() {
  if [[ $1 ]]
  then
      rm -rfv "./$1"
      mkdir -p "/tmp/picobug/$1"
      ln -s "/tmp/picobug/$1" "./$1"
  fi 
}
