# Dotfiles

Personal configuration files for Archcraft/bspwm setup.

## Contents

- **bspwm** — window manager config, keybindings, scripts, themes
- **kitty** — terminal emulator config
- **btop** — system monitor config
- **mpd** — music player daemon config
- **betterlockscreen** — lockscreen config
- **mimeapps** — default app associations

## Setup

Clone and symlink configs:

```bash
git clone https://github.com/yourusername/dotfiles.git ~/dotfiles

ln -sf ~/dotfiles/.config/bspwm ~/.config/bspwm
ln -sf ~/dotfiles/.config/kitty ~/.config/kitty
ln -sf ~/dotfiles/.config/btop ~/.config/btop
ln -sf ~/dotfiles/mpd.conf ~/.mpd/mpd.conf
ln -sf ~/dotfiles/betterlockscreenrc ~/.config/betterlockscreen/betterlockscreenrc
```

