{ nixpkgs ? import ./nix/sources.nix, pkgs ? import nixpkgs {}}:

pkgs.mkShell {
  buildInputs = [ pkgs.niv ];
}
