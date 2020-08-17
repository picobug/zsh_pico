# Enjoy with My Config

```sh
modiar(){
  fuser -n tcp "$1" | awk '{ print $2 }' | xargs -r kill
}
```
