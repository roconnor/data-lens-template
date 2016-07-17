{ pkgs ? import <nixpkgs> {}
, hp ? pkgs.haskellPackages
, data-lens ? hp.data-lens
}:

hp.callPackage ({mkDerivation, data-lens}:
 mkDerivation {
  pname = "data-lens-template";
  version = "2.1.10";
  src = pkgs.lib.sourceFilesBySuffices ./. [".hs" ".cabal" "LICENSE"];
  buildDepends = [ data-lens ];
  license = pkgs.lib.licenses.bsd3;
}) { inherit data-lens; }
