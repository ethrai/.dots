{ config, lib, ... }: {
  programs.nixvim = {
    globals = {
      mapleader = " ";
      maplocalleader = " ";
    };

    keymaps = let
      normal = lib.mapAttrsToList (key: action: {
        mode = "n";
        inherit action key;
      }) {
        "<Space>" = "<NOP>";

        # Esc to clear search results
        "<esc>" = ":noh<CR>";

        # fix Y behaviour
        Y = "y$";

        # back and fourth between the two most recent files
        "<C-c>" = ":b#<CR>";

        # close by Ctrl+x
        "<C-x>" = ":close<CR>";
        # save by Space+s or Ctrl+s
        "<leader>s" = ":w<CR>";
        "<C-s>" = ":w<CR>";

        # navigate to left/right window
        "<C-h>" = "<C-w>h";
        "<C-l>" = "<C-w>l";
        "<C-j>" = "<C-w>j";
        "<C-k>" = "<C-w>k";

        # Press 'H', 'L' to jump to start/end of a line (first/last character)
        L = "$";
        H = "^";

        # resize with arrows
        "<C-Up>" = ":resize -2<CR>";
        "<C-Down>" = ":resize +2<CR>";
        "<C-Left>" = ":vertical resize +2<CR>";
        "<C-Right>" = ":vertical resize -2<CR>";

        # move current line up/down
        # M = Alt key
        "<M-k>" = ":move-2<CR>";
        "<M-j>" = ":move+<CR>";

        # Telescope

        #Lspsaga
        "<leader>a" = "<cmd> Lspsaga code_action<CR>";
        "K" = "<cmd> Lspsaga hover_doc<CR>";
        "ge" = "<cmd> Lspsaga diagnostic_jump_next<CR>";
          "gp" = "<cmd> Lspsaga peek_definition<CR>";
          "gw" = "<cmd> Lspsaga diagnostic_jump_prev<CR>";
          "<F2>" = "<cmd> Lspsaga rename<CR>";

        };
      visual = lib.mapAttrsToList (key: action: {
        mode = "v";
        inherit action key;
      }) {
          # better indenting
          ">" = ">gv";
          "<" = "<gv";
          # "<TAB>" = ">gv";
          # "<S-TAB>" = "<gv";

          # move selected line / block of text in visual mode
          "J" = ":m '>+1<CR>gv=gv";
          "K" = ":m '<-2<CR>gv=gv";
      };
    in config.lib.nixvim.keymaps.mkKeymaps { options.silent = true; }
    (normal ++ visual);
  };
}
