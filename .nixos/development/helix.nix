{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {
      theme = lib.mkForce "base16_default_dark";
      editor.cursor-shape = {
        normal = "block";
        insert = "block";
        select = "block";
      };
    };

    languages.language = [
      {
        name = "nix";
        auto-format = true;
        formatter.command = "${pkgs.nixfmt-rfc-style}/bin/nixfmt";
      }
    ];
  };
}
