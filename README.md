# EndeavourOS with i3 Dotfiles

Personal dotfiles for my EndeavourOS setup — tuned for a minimal, fast, and cohesive workflow. **It is still being configured**.

## Structure

| Folder | Purpose |
|---------|----------|
| `i3/` | Window manager config |
| `polybar/` | Status bar setup |
| `picom/` | Compositor settings |
| `kitty/` | Terminal config |
| `nvim/` | Neovim setup |
| `bash/` | Shell aliases & env |
| `gtk/`, `x11/`, `feh/`, `zathura/` | UI / theme configs |

## General comments
System colour scheme automatically adapts based on the chosen wallpaper. Upon rebooting, the WM randomly chooses a wallpaper from the designated folder, and adapts the terminal's colours to it.

The general theme is Nord (nvim, polybar, kitty).

## Setup

```bash
git clone https://github.com/consigliere0/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./install.sh   # or link configs manually
```
