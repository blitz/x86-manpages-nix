{ sources ? import ./nix/sources.nix, nixpkgs ? sources.nixpkgs
, pkgs ? import nixpkgs { } }:

pkgs.stdenv.mkDerivation {
  pname = "x86-manpages";
  version = "0.0.0";

  src = pkgs.fetchFromGitHub {
    owner = "ttmo-O";
    repo = "x86-manpages";

    rev = "0e199a8b4d90be7eb715291c21cf41de8527beac";
    sha256 = "0im596j0pf90npg933gkq6wpw23c47fcwv0n64qfqn5mcy92qbcb";
  };

  installPhase = ''
    mkdir -p $out/man/man7

    for m in manpages/*.7; do
      install -m 644 "$m" "$out/man/man7/"
    done
  '';

  meta = with pkgs.stdenv.lib; {
    description = "Manpages for x86 instructions";
    homepage = "https://github.com/ttmo-O/x86-manpages";
    #license = licenses.unfree;
    platforms = platforms.all;
  };
}
