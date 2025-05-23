{config, pkgs, ...}:

{
  home.username = "mmalwick";
  home.homeDirectory = "/home/mmalwick";

  home.packages = with pkgs; [
    neofetch
    lazygit
    gh
    vscode
    fish
    nnn
    hyprland-protocols
    hyprland
    xdg-desktop-portal-hyprland
   # wlroots
   # wayland-utils
   # xdg-desktop-portal
    zsh
    chromium

  ];
  
  programs.kitty.enable = true;
 # wayland.windowManager.hyprland.enable = true;
  programs.git = {
    enable = true;
    userName = "Mychilli";
    userEmail = "Mychilli@gmail.com";
  };
 # programs.fish.enable = true;
 # programs.fish.shellAliases = {
 #   ll = "ls -l";
 # };

  home.stateVersion = "24.11";
  programs.home-manager.enable = true;
  wayland.windowManager.hyprland.settings = {
    disable_hyprland_logo = true; 
    force_default_wallpaper = 0;
  };
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    
    shellAliases =  {
      update = "sudo nixos-rebuild switch --flake .";
    };
  };
}  
