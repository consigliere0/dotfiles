***Note:*** the provided codes are fully functional, but I'm still ricing my setup. I will include screenshots when the time is due.

# EndeavourOS i3 dotfiles
This repository contains the dotfiles for my EndeavourOS system running the i3 window manager. These configurations are managed with GNU Stow to create symbolic links from the repository to my home directory.

## Included programs
- i3: My window manager setup.
- Polybar: The status bar configuration.
- Neovim: My primary text editor setup.
- Kitty: My terminal emulator settings.
- Picom: The compositor configuration.
- Zathura: My PDF/document viewer settings.
- Bash: My shell configuration files (.bashrc, .bash_profile, etc.).
- X11: System-wide configurations (.Xresources).
- Feh: Wallpaper settings.

## General notes
The general theme is Nord (see https://www.nordtheme.com/).
It is configured such that everytime the computer reboots, a random wallpaper is chosen (between the imported wallpapers), and automatically adapts the system colors to that particular image. The new color scheme can be easily seen running `fastfetch` on the terminal.

## Installation
To install these dotfiles on a new machine, follow the following steps.:

1. **Clone the repository**
   ```
   git clone --depth=1 [https://github.com/consigliere0/dotfiles.git](https://github.com/consigliere0/dotfiles.git) ~/.dotfiles
   ```
3. **Install GNU Stow**. On Arch-based systems, you can use `pacman`:
   ```
   sudo pacman -S stow
   ```
5. **Use Stow to create symbolic links**. Make sure to remove any existing configuration files that might conflict.
   ```
   cd ~/.dotfiles
   stow i3
   stow kitty
   stow nvim
   stow polybar
   stow picom
   stow zathura
   stow bash
   stow feh
   stow gtk
   stow x11
   ```
7. **Reload i3**. This can be done by typing `$mod+shift+r`, or by running on the terminal `i3-msg reload`.

# Updating Dotfiles
Once everything is set up, you only need to edit the files in the ~/.dotfiles directory. To save your changes to GitHub, use the following commands:
```
cd ~/.dotfiles
git add .
git commit -m "Your descriptive commit message"
git push
```
