# dotfiles
this is my dotfiles repo, containing but not limited to:
* kitty
* hypr
* waybar 
* wofi

## dependencies

* kitty
* hyprland
* hyprpaper
* hyprlock
* hyprpm (comes with hyprland)
* waybar
* wofi
* git (duh)
* jetbrains mono
* librewolf 
* wlogout
* thunar file manager
* cava (yes the cool music visualizer!) 
* swaync (notification daemon)
* grim + slurp (screenshots)
* wl-copy (clipboard)
* paplay (sound effects)
* brightnessctl (screen brightness)
* wpctl (volume control, part of pipewire/wireplumber)
* playerctl (media controls)
* steam (optional, but it's in autostart)

### plugins
* hyprtrails
* hyprfocus

## installation

all of these folders should go into ~/.config, making any missing folders (if any).
after installing them, there should be a jpg file in ~/pictures. pick one you like! chances are, i will include some at..some point.
after that, it is _highly_ recommended to reboot your system instead of reloading everything.
for me, this is just easier and faster, but also more effective. i'm not your mom, though, do what you want.

## troubleshooting

chances are, you might run into problems (especially if not on arch linux).
here are some common problems and how to fix them:
* "hyprland crashed, what now?" just open it again, chances are, it was just making the default files. there's also a chance that it crashes on first launch when using the gdm login manager.
* "none of the configs are loading!" make sure you put the folders inside of ~/.config (eg, ~/.config/hypr).
* "it's not working/showing anything!" if you have an nvidia gpu, special changes are needed. refer to [here for more info.](https://wiki.hypr.land/nvidia/) 

## post install

keybinds are as follows, where super is the windows key:

### apps
* super + t - opens kitty
* super + w - opens librewolf
* super + e - opens thunar file manager
* super + r - opens wofi menu
* super + m - opens modrinth app
* super + g - opens github
* super + s - opens bazaar
* super + a - opens ametrine

### window management
* super + c - closes focused window
* super + v - toggle floating
* super + p - pseudotile
* super + j - toggle split
* super + tab - toggle overview
* super + any arrow key - moves focus to that direction's closest window, from focused window (example, if you have 4 apps open and have the bottom-left focused, doing super + up will select the top-left

### workspaces
* super + 1-0 - switches workspace
* super + shift + 1-0 - moves focused window to specified workspace
* super + scroll up/down - cycle through workspaces

### system
* super + shift + m - exit hyprland
* super + shift + r - reload hyprland

### media & hardware
* print - screenshot area (saves to clipboard)
* shift + print - screenshot full screen (saves to clipboard)
* xf86audioraisevolume - volume up 5%
* xf86audiolowervolume - volume down 5%
* xf86audiomute - toggle mute
* xf86audiomicmute - toggle mic mute
* xf86monbrightnessup - brightness up 5%
* xf86monbrightnessdown - brightness down 5%
* xf86audionext - next track
* xf86audioprev - previous track
* xf86audioplay/xf86audiopause - play/pause

if you need any help, don't hesitate to *make an issue with the* **help** tag.

### extras - rices
for those who don't know, a 'rice' in linux (or anything really) is pretty much your cool looking session (or as i call them, really insane cool environment).
anyway, here's some sick screenshots (yea i know my battery's low who cares):

default rice
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/a50a08cf-64ca-4d64-be8c-f9724669ed28" />

sprice
<img width="1921" height="1081" alt="image" src="https://github.com/user-attachments/assets/64b047a1-b1b2-4b5d-aa5e-a9dfa3eba4dc" />

gaming
<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/4fd0f254-93f5-47f5-ba39-6445fb39b749" />
