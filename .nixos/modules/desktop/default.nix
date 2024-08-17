{ pkgs, ... }:

{
  home.packages = with pkgs; [
    wl-clipboard
    cliphist
    playerctl
    pamixer
    brightnessctl
    pavucontrol

    seahorse
  ];
  imports = [
    ./gtk
    ./hyprland
    ./waybar
    ./xdg
    ./cliphist.nix
    ./dunst.nix
    ./fonts.nix
    ./gammastep.nix
    ./gnome-keyring.nix
    ./rofi.nix
  ];
}