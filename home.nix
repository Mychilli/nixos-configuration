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
  ];
  
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
  
}
