pkgs: {

  "hyprland/language" = {
    "format" = "{}";
    "format-en" = "  US";
    "format-ru" = "  RU";
    "on-click" = "hyprctl switchxkblayout evision-usb-device next";
  };

  backlight = {
    device = "intel_backlight";
    format = "  {percent}%";
    scroll-step = 10.0;
  };

  pulseaudio = {
    format = "{icon} {volume}%";
    format-bluetooth = "{volume}% {icon} ";
    format-muted = "󰖁 muted";
    format-icons = {
      headphone = " ";
      hands-free = "󰋎";
      headset = "󰋎";
      default = "󰕾";
    };

    # Interaction
    scroll-step = 5;
    on-click = "pactl set-sink-mute @DEFAULT_SINK@ toggle";
    on-click-right = "pavucontrol";
  };

  memory = {
    interval = 1;
    format = "  {:02}%";
  };

  cpu = {
    interval = 1;
    tooltip = false;
    # format = " {usage:02}%";
    format = "  {usage:02}%";
    # format = "  {icon0}{icon1}{icon2}{icon3}{icon4}{icon5}{icon6}{icon7}{icon8}{icon9}{icon10}{icon11}{icon12}{icon13}{icon14}{icon15} {usage:02}%";
    format-icons = [ "▁" "▂" "▃" "▄" "▅" "▆" "▇" "█" ];
  };

  network = {
    tooltip = false;

    format = "{ifname}";
    format-wifi = "  {essid}";
    format-ethernet = "󰈀  {ipaddr}";
    format-disconnected = "";
  };

  battery = {
    tooltip = false;

    format = "{icon}  {capacity}%";
    format-full = "{icon}  {capacity}% 󰚥";
    format-charging = "{icon}  {capacity}% 󰚥";

    format-icons = [ "" "" "" "" "" ];
  };

  clock = {
    interval = 5;
    format = "  {:%H:%M}";
  };

  "clock#date" = {
    interval = 5;
    format = "  {:%d/%m/%Y}";
  };

  "custom/notifications" = import ./notifications.nix pkgs;

  tray = {
    icon-size = 18;
    spacing = 2;
  };
}
