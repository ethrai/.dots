{ pkgs, ... }: {
  stylix.enable = true;

  stylix.image = /home/sergio/.dots/wallpaper.png;
  stylix.polarity = "dark";
  stylix.autoEnable = true;
  stylix.homeManagerIntegration.autoImport = true;

  stylix.base16Scheme = {
    base00 = "1e1e2e"; # base #1e1e2e
    base01 = "181825"; # mantle #181825
    base02 = "313244"; # surface0 #313244
    base03 = "45475a"; # surface1 #45475a
    base04 = "585b70"; # surface2 #585b70
    base05 = "cdd6f4"; # text #cdd6f4
    base06 = "cba6f7"; # mauve #cba6f7
    base07 = "b4befe"; # lavender #b4befe
    base08 = "f38ba8"; # red #f38ba8
    base09 = "fab387"; # peach #fab387
    base0A = "f9e2af"; # yellow #f9e2af
    base0B = "a6e3a1"; # green #a6e3a1
    base0C = "94e2d5"; # teal #94e2d5
    base0D = "89b4fa"; # blue #89b4fa
    base0E = "f5e0dc"; # rosewater #f5e0dc
    base0F = "f2cdcd"; # flamingo #f2cdcd
  };

  stylix.cursor.package = pkgs.bibata-cursors;
  stylix.cursor.name = "Bibata-Modern-Ice";
  stylix.cursor.size = 20;
}
