# Enjoy with My Config

## My ZimFW Config

zmodule tj/git-extras --name zsh-extras --source etc/git-extras-completion.zsh
zmodule picobug/zsh_pico --name zsh-picobug
zmodule lukechilds/zsh-nvm --name zsh-nvm
zmodule mattberther/zsh-pyenv --name zsh-pyenv
zmodule denysdovhan/spaceship-prompt --name spaceship

## My ZSH ENV

path=("$HOME/.local/bin" "$HOME/.bin" "$HOME/.config/composer/vendor/bin" "$(yarn global bin)" "$path[@]")
export PATH
export YARN_CACHE_FOLDER="$HOME/.yarn/.cache"
export COMPOSER_CACHE_DIR="$HOME/.composer"
export COMPOSER_HOME="$HOME/.config/composer"
export COMPOSER_MEMORY_LIMIT=-1
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
export NVM_NODEJS_ORG_MIRROR=https://nodejs.org/dist

```sh
modiar(){
  fuser -n tcp "$1" | awk '{ print $2 }' | xargs -r kill
}
```
