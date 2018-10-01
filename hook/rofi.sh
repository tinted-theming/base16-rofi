#!/usr/bin/env bash

rofi_config_file=$HOME/.config/rofi/config
rofi_themes_dir=$HOME/sources/base16-rofi/themes
rofi_theme_file=$rofi_themes_dir/base16-$BASE16_THEME.config

if ![ -f $rofi_config_file ] && [ -f "$rofi_theme_file" ]; then
  cp "$rofi_theme_file" "$rofi_config_file"
  echo 'Rofi theme updated'
fi
