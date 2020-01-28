# Nix Derivation for x86-manpages

This repository contains [Nix](https://nixos.org/nix/) expressions for convenient installation
of [x86-manpages](https://github.com/ttmo-O/x86-manpages).

Install via:

```
nix-env -if https://github.com/blitz/x86-manpages-nix/archive/master.tar.gz
```

You may need to add `{ allowUnfree = true; }` to `~/.config/nixpkgs/config.nix`.
