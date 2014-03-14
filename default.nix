{ haskellPackages ? (import <nixpkgs> {}).haskellPackages }:
let
  inherit (haskellPackages) cabal cabalInstall
    dataLens;

in cabal.mkDerivation (self: {
  pname = "data-lens-template";
  version = "2.1.8";
  src = ./.;
  buildDepends = [ dataLens ];
  buildTools = [ cabalInstall ];
  enableSplitObjs = false;
})
