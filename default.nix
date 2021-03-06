{ nixpkgs ? import <nixpkgs> {}, compiler ? "ghc801" }:
let
  haskellPackages = nixpkgs.pkgs.haskell.packages.${compiler};
in

haskellPackages.callPackage ./project.nix {
  pkgs = nixpkgs;
}
