{
  description = "A simple NixOS flake";

  inputs = {
    # NixOS official package source, here using the nixos-24.11 branch
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  home-manager = {
    url = "github:nix-community/home-manager/release-24.11";
    inputs.nixpkgs.follows = "nixpkgs";  
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    # The host with the hostname `my-nixos` will use this configuration
    nixosConfigurations= {
      mmalwick-nixos = nixpkgs.lib.nixosSystem{
        system = "x86_64-linux";
        modules = [
          ./configuration.nix
          home-manager.nixosModules.home-manager
          {
          home-manager.useGlobalPkgs= true;
          home-manager.useUserPackages = true;
          home-manager.users.mmalwick = import ./home.nix;
          }
      ];
      };
    };
  };
}
