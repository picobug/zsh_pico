export PATH=$HOME/.bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/opt/android-sdk/platform-tools:$PATH
export PATH=$HOME/.config/composer/vendor/bin:$PATH
export MACHINE_GITHUB_API_TOKEN="56659eff75e6f56d1e33b23fdee825f9e2cd5f38"
export GTK_CSD=0
export VIRTUALBOX_DISK_SIZE="2048"
export VIRTUALBOX_MEMORY_SIZE="768"
export VIRTUALBOX_NO_VTX_CHECK=true
export COMPOSE_HTTP_TIMEOUT=120
export NODE_EXTRA_CA_CERTS="$(mkcert -CAROOT)/rootCA.pem"
export EDITOR=vi
export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export PUPPETEER_SKIP_CHROMIUM_DOWNLOAD=true
export PUPPETEER_EXECUTABLE_PATH=/usr/bin/chromium
unsetopt BG_NICE
vc() {
  /usr/bin/code $@ --ignore-gpu-blacklist --enable-accelerated-2d-canvas --enable-gpu-rasterization --enable-native-gpu-memory-buffers
}
moddir() {
  find "$1" -type d -exec chmod "$2" {} +
}
killport() {
  fuser -k "$1"/tcp
}
upgitflow(){
  wget --no-check-certificate -q  https://raw.githubusercontent.com/petervanderdoes/gitflow-avh/develop/contrib/gitflow-installer.sh && sudo bash gitflow-installer.sh install stable; rm gitflow-installer.sh
}
updc(){
 sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose && sudo chmod +x /usr/local/bin/docker-compose
}
