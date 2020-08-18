# Enjoy with My Config

ZimFramework with ZSH for my daily use is awesome tool, maybe you will use it and combine with some config to perfect environment shell in your linux. Fell free to fork or open issue and other in my repo.

## My ZimFW Config

```sh
zmodule tj/git-extras --name zsh-extras --source etc/git-extras-completion.zsh
zmodule picobug/zsh_pico --name zsh-picobug
zmodule lukechilds/zsh-nvm --name zsh-nvm
zmodule mattberther/zsh-pyenv --name zsh-pyenv
zmodule denysdovhan/spaceship-prompt --name spaceship
```

## My ZSH ENV

```sh
path=("$HOME/.local/bin" "$HOME/.bin" "$HOME/.config/composer/vendor/bin" "$(yarn global bin)" "$path[@]")
export PATH
export YARN_CACHE_FOLDER="$HOME/.yarn/.cache"
export COMPOSER_CACHE_DIR="$HOME/.composer"
export COMPOSER_HOME="$HOME/.config/composer"
export COMPOSER_MEMORY_LIMIT=-1
export NVM_LAZY_LOAD=true
export NVM_AUTO_USE=true
export NVM_NODEJS_ORG_MIRROR=https://nodejs.org/dist
```

## Additional Function :-D

```sh
modiar(){
  fuser -n tcp "$1" | awk '{ print $2 }' | xargs -r kill
}
```
