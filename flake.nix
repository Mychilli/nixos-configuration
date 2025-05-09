{
  description = "A simple NixOS flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.11";
  home-manager = {
    url = "github:nix-community/home-manager/release-24.11";
    inputs.nixpkgs.follows = "nixpkgs";  
    };
  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations= {
      mmalwick-nixos = nixpkgs.lib.nixosSystem{ #hostname
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
