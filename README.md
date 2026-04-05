# Starry Night — Dotfiles

Personal configuration files for Archcraft/bspwm setup.

<img width="2560" height="1440" alt="Starry Night" src="https://github.com/user-attachments/assets/ced5ba1d-216f-4d25-83b8-5254ed88e934" />

## System

| Component | Details |
|-----------|---------|
| OS | Archcraft (2026.02.02) |
| WM | bspwm |
| Bar | Polybar |
| Launcher | Rofi |
| Terminal | Kitty |
| Compositor | Picom |
| Browser | Zen |
| File Manager | Thunar |
| Music | MPD + ncmpcpp |
| Login | SDDM (astronaut theme) |
| Lockscreen | betterlockscreen |
| Shell | zsh |

## Contents

| Config | Path | Description |
|--------|------|-------------|
| bspwm | `.config/bspwm/` | WM config, keybindings, scripts, all themes |
| picom | `.config/bspwm/picom.conf` | Compositor — blur, transparency, shadows |
| polybar | `.config/bspwm/themes/wave/polybar/` | Bar layout, modules, colors |
| rofi | `.config/bspwm/themes/wave/rofi/` | Launcher theme with transparency |
| kitty | `.config/kitty/` | Terminal — opacity + blur |
| btop | `.config/btop/` | System monitor |
| mpd | `mpd.conf` | Music player daemon |
| betterlockscreen | `.config/betterlockscreen/` | Lockscreen config |
| mimeapps | `.config/mimeapps.list` | Default app associations |
| sddm | `sddm-theme/` | Login screen (astronaut theme) |

## Active Theme

**wave** — polybar, rofi, wallpaper all configured under `.config/bspwm/themes/wave/`

## Customizations

- Kitty: background opacity + blur via picom
- Thunar: transparency via picom
- Rofi: semi-transparent background with alpha, white text on hover
- Polybar: CPU, RAM, temperature, network, bluetooth, date — all with transparency
- Zen browser: toolbar transparency via userChrome.css
- bspwm: kitty as default terminal (`Super + Enter`)

## Polybar Modules

| Module | Location |
|--------|----------|
| Layout | `themes/wave/polybar/config.ini` |
| CPU, RAM, Temp, Network, BT, Date | `themes/wave/polybar/modules.ini` |
| Colors | `themes/wave/polybar/colors.ini` |

## Setup

```bash
git clone https://github.com/AzizStark/dotfiles.git ~/dotfiles

ln -sf ~/dotfiles/.config/bspwm ~/.config/bspwm
ln -sf ~/dotfiles/.config/kitty ~/.config/kitty
ln -sf ~/dotfiles/.config/btop ~/.config/btop
ln -sf ~/dotfiles/.config/betterlockscreen ~/.config/betterlockscreen
ln -sf ~/dotfiles/mpd.conf ~/.mpd/mpd.conf
ln -sf ~/dotfiles/.config/mimeapps.list ~/.config/mimeapps.list

# SDDM theme (requires root)
sudo cp -r ~/dotfiles/sddm-theme /usr/share/sddm/themes/sddm-astronaut-theme
```
