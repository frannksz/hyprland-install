#!/usr/bin/env bash

#                              Franklin Souza
#                                 @frannksz

clear
sudo pacman -S hyprland \
  wayland \
  xorg-xwayland \
  xf86-video-amdgpu \
  ttf-dejavu \
  kitty \
  waybar \
  pavucontrol \
  pipewire \
  pipewire-alsa \
  pipewire-pulse \
  wireplumber \
  xdg-desktop-portal-hyprland \
  base-devel \
  polkit-gnome \
  hyprpaper \
  slurp \
  usbutils \
  wl-clipboard --noconfirm
