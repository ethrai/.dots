{ pkgs, ... }: {
  imports = [ ./zoxide.nix ./fzf.nix ./zsh.nix ./eza.nix ./fd.nix ];

  home.sessionVariables = {
    TMUX_FZF_OPTIONS = "-p -w 90% -h 55% -m";
    TMUX_FZF_ORDER = "session|window|pane";
    TMUX_FZF_LAUNCH_KEY = "C-f";
  };
  home.packages = with pkgs; [ jq ripgrep fd curl httpie gnumake ];

}