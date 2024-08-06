{
  config,
  lib,
  pkgs,
  inputs,
  ...
}:
{
  wayland.windowManager.hyprland = {
    plugins = [ inputs.hy3.packages.x86_64-linux.hy3 ];
    settings = {
      plugin = {
        hy3 = {
          # disable gaps when only one window is onscreen
          # 0 - always show gaps
          # 1 - hide gaps with a single window onscreen
          # 2 - 1 but also show the window border
          no_gaps_when_only = 1; # default: 0

          # policy controlling what happens when a node is removed from a group,
          # leaving only a group
          # 0 = remove the nested group
          # 1 = keep the nested group
          # 2 = keep the nested group only if its parent is a tab group
          node_collapse_policy = 2; # default: 2

          # offset from group split direction when only one window is in a group
          group_inset = 10; # default: 10

          # if a tab group will automatically be created for the first window spawned in a workspace
          tab_first_window = true;

          # tab group settings
          tabs = with config.lib.stylix.colors; {
            # height of the tab bar
            height = 15; # default: 15

            # padding between the tab bar and its focused node
            padding = 0; # default: 5

            # the tab bar should animate in/out from the top instead of below the window
            from_top = true; # default: false

            # rounding of tab bar corners
            rounding = 0; # default: 3

            # render the window title on the bar
            render_text = true; # default: true

            # center the window title
            text_center = true; # default: false

            # font to render the window title with
            text_font = "Fira Code"; # default: Sans

            # height of the window title
            text_height = 10; # default: 8

            # left padding of the window title
            text_padding = 0; # default: 3

            "col.active" = "rgb(${base00})"; # default: 0xff32b4ff
            "col.urgent" = "rgb(${base08})"; # default: 0xff32b4ff
            "col.inactive" = "rgb(${base01})"; # default: 0xff32b4ff

            "col.text.active" = "rgb(${base05})"; # default: 0xff32b4ff
            "col.text.urgent" = "rgb(${base05})"; # default: 0xff32b4ff
            "col.text.inactive" = "rgb(${base06})"; # default: 0xff32b4ff

            # urgent tab bar segment color
          };

          # autotiling settings
          autotile = {
            # enable autotile
            enable = false; # default: false

            # make autotile-created groups ephemeral
            ephemeral_groups = true; # default: true

            # if a window would be squished smaller than this width, a vertical split will be created
            # -1 = never automatically split vertically
            # 0 = always automatically split vertically
            # <number> = pixel height to split at
            trigger_width = 0; # default: 0

            # if a window would be squished smaller than this height, a horizontal split will be created
            # -1 = never automatically split horizontally
            # 0 = always automatically split horizontally
            # <number> = pixel height to split at
            trigger_height = 0; # default: 0

            # a space or comma separated list of workspace ids where autotile should be enabled
            # it's possible to create an exception rule by prefixing the definition with "not:"
            # workspaces = 1,2 # autotiling will only be enabled on workspaces 1 and 2
            # workspaces = not:1,2 # autotiling will be enabled on all workspaces except 1 and 2
            workspaces = "all"; # default: all
          };

        };

      };

    };
  };
}
