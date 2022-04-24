
https://wiki.archlinux.org/title/x_resources


enable second monitors
```
xrandr --output eDP1 --auto --output DP1 --auto --right-of eDP1
```

disable laptop LCD
```
xrandr --output eDP1 --off
```


```
xrdb -merge ~/dotfiles/xorg/XresourcesExternalMonitor
```

