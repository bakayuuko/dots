#!/bin/env bash

rm -rf ~/.xinitrc
rm -rf ~/.bashrc
rm -rf ~/.Xresources
rm -rf ~/.zshrc
# remove folder
rm -rf ~/.config/aria2
rm -rf ~/.config/bspwm
rm -rf ~/.config/cava
rm -rf ~/.config/compton
rm -rf ~/.config/dunst
rm -rf ~/.config/mpd
rm -rf ~/.config/mpv
rm -rf ~/.config/ncmpcpp
rm -rf ~/.config/polybar
rm -rf ~/.config/ranger
rm -rf ~/.config/rofi
rm -rf ~/.config/sxhkd
rm -rf ~/.config/micro
rm -rf ~/.config/wal
rm -rf ~/.config/tint2
rm -rd ~/.config/openbox
rm -rf ~/.config/htop

# create link
ln -sfv ~/dots/.config/aria2/ ~/.config/
ln -sfv ~/dots/.config/bspwm/ ~/.config/
ln -sfv ~/dots/.config/cava/ ~/.config/
ln -sfv ~/dots/.config/compton/ ~/.config/
ln -sfv ~/dots/.config/dunst/ ~/.config/
ln -sfv ~/dots/.config/neofetch ~/.config/
ln -sfv ~/dots/.config/mpd/ ~/.config/
ln -sfv ~/dots/.config/mpv/ ~/.config/
ln -sfv ~/dots/.config/ncmpcpp/ ~/.config/
ln -sfv ~/dots/.config/polybar/ ~/.config/
ln -sfv ~/dots/.config/ranger/ ~/.config/
ln -sfv ~/dots/.config/rofi/ ~/.config/
ln -sfv ~/dots/.config/sxhkd/ ~/.config/
ln -sfv ~/dots/.config/micro/ ~/.config/
ln -sfv ~/dots/.config/wal/ ~/.config/
ln -sfv ~/dots/.config/tint2/ ~/.config/
ln -sfv ~/dots/.config/htop/ ~/.config/
ln -sfv ~/dots/.config/openbox/ ~/.config/
ln -sfv ~/dots/.themes ~/
ln -sfv ~/dots/.urxvt ~/
ln -sfv ~/dots/.vivaldi ~/
cp ~/dots/antigen.zsh ~/
cp ~/dots/.fehbg ~/.fehbg
mkdir -p ~/Pictures
ln -sfv ~/dots/Pictures/background/ ~/Pictures/
ln -sfv ~/dots/Pictures/anime/ ~/Pictures/
ln -sfv ~/dots/.bin ~/
ln -sfv ~/dots/.fonts ~/
ln -sfv ~/dots/.xinitrc ~/.xinitrc
ln -sfv ~/dots/.Xresources ~/.Xresources
ln -sfv ~/dots/.zshrc ~/.zshrc
