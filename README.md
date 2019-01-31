base16-rofi
===========

[Base16](https://github.com/chriskempson/base16) for [Rofi](https://github.com/DaveDavenport/rofi)

### Installation

Copy or link the desired base16-*.rasi theme files to `~/.local/share/rofi/themes/`.
```sh
git clone https://github.com/0xdec/base16-rofi.git
ln -s base16-rofi ~/.local/share/rofi/themes/
rofi -theme base16-default-dark
```

For older Rofi versions (< 1.4), copy the desired base16-*.config theme file to `~/.config/rofi/config`.
```sh
git clone https://github.com/0xdec/base16-rofi.git
mkdir ~/.config/rofi
ln -s base16-rofi/themes/base16-default-dark.config >> ~/.config/rofi/config
```

### Base16-Shell Hook

For Rofi < v1.4 this repo also provides a hook to switch the color scheme automatically when a base16_shell theme is set. Note that for now, this only works when there is no existing Rofi config file (to avoid overwriting it). The setup is pretty straightforward:

```sh
export BASE16_SHELL_HOOKS=$HOME/.config/base16-shell/hooks
mkdir -p $BASE16_SHELL_HOOKS
cp hook/rofi.sh $BASE16_SHELL_HOOKS && chmod +x $BASE16_SHELL_HOOK/rofi.sh
```

Then set the `rofi_config_file` and `rofi_themes_dir` variables in the script.
