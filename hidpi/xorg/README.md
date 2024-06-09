
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



xrandr --output "eDP-1" --auto --output "DP-2" --auto --right-of "eDP-1"



xrandr --output "DP-2" --mode 3840x1600 --output "eDP-1" --off 


xrandr --output "eDP-1" --auto --output "DP-3" --auto --right-of "eDP-1"


xrandr --output "DP-3" --off