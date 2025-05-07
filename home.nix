{config, pkgs, ...}:

{
  home.username = "mmalwick";
  home.homeDirectory = "/home/mmalwick";

  home.packages = with pkgs; [
    neofetch
    lazygit
    gh
    vscode
  ];
  
  programs.git = {
    enable = true;
    userName = "Mychilli";
    userEmail = "Mychilli@gmail.com";
  };
  home.stateVersion = "24.11";
  programs.home-manager.enable = true;

}
