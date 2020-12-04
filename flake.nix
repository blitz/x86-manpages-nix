{
  description = "man page documentation for x86-64 ISA";

  inputs.flake-utils.url = "github:numtide/flake-utils";

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem 
      ( system:
          let pkgs = nixpkgs.legacyPackages.${system};
          in {
            devShell       = import ./shell.nix   { inherit pkgs; };
            defaultPackage = import ./default.nix { inherit pkgs; };
          }
      );
}
