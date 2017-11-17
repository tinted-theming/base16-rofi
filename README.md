base16-rofi
===========

[Base16](https://github.com/chriskempson/base16) for [rofi](https://github.com/DaveDavenport/rofi)

### Installation
Add the theme to your `~/.config/rofi/config`
```sh
mkdir ~/.config/rofi
curl https://raw.githubusercontent.com/0xdec/base16-rofi/master/themes/base16-default-dark.config >> ~/.config/rofi/config
```

### Base16-shell hook

This repo also provides an hook to switch the rofi colorscheme automatically when a base16_shell theme is set. The setup is pretty straightforward:

```
> export BASE16_SHELL_HOOKS=$HOME/.config/base16-shell/hooks
> mkdir -p $BASE16_SHELL_HOOKS
> cp hook/rofi.sh $BASE16_SHELL_HOOKS && chmod +x $BASE16_SHELL_HOOK/rofi.sh
```

Then set the `rofi_config_file` and `rofi_themes_dir` variables in the script.


