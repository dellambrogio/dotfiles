# Dotfiles

hardware
```
inxi -Fxxxrz
```

xrandr --output eDP-1 --brightness 0.5


# Nvidia

```
sudo prime-select on-demand
sudo prime-select intel
sudo prime-select nvidia

```

# grub

```
sudo vim /etc/default/grub
update-grub

```

# pipewire

https://wiki.archlinux.org/title/PipeWire#Systemwide_parametric_equalization

~/.config/pipewire/pipewire.conf.d/sink-eq6.conf and ran 

```
systemctl --user restart pipewire && wpctl set-default internal_speaker

```

There is also a GUI program called easyeffects, though it is very crashy.


