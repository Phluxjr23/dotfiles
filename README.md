# Dotfiles
This is my dotfiles repo, containing but not limited to:
* Kitty
* Hypr
* Waybar
* Wofi
dotfiles.

## Dependencies

* kitty
* hyprland
* hyprpaper
* hyprlock
* waybar
* wofi
* git (duh)
* Jetbrains Mono
* Vivaldi Web Browser
* Wlogout
* Dolphin file manager

## Installation

All of these folders should go into ~/.config, making any missing folders (if any).
After installing them, there should be a jpg file in ~/Pictures. Pick one you like! Chances are, i will include some at..some point.
After that, it is _HIGHLY_ reccomended to reboot your system instead of reloading everything.
For me, this is just easier and faster, but also more effective. I'm not your mom, though, do what you want.

## Troubleshooting

Chances are, you might run into problems (especially if not on Arch Linux).
Here are some common problems and how to fix them:
* "Hyprland crashed, what now?" Just open it again, chances are, it was just making the default files. There's also a chance that it crashes on first launch when using the GDM login manager.
* "None of the configs are loading!" Make sure you put the folders inside of ~/.config (Eg, ~/.config/hypr).
* "It's not working/showing anything!" If you have an NVIDEA GPU, special changes are needed. Refer to [here for more info.](https://wiki.hypr.land/Nvidia/) 

## Post install

Keybinds are as follows:
* Super + T - Opens kitty
* Super + W - Opens vivaldi
* Super + C - Closes focused window
* Super + Shift + M - Exit hyprland
* Super + E - Opens dolphin file manager

If you need any help, don't hesitate to *make an issue with the* _HELP_ tag.
