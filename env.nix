let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-23.05.tar.gz") { };
  fenix = import (fetchTarball "https://github.com/nix-community/fenix/archive/main.tar.gz") { };
in {
  inherit (pkgs)
    emacs29
    glibcLocalesUtf8
    libtool
    ripgrep
  ;
  rust = fenix.complete.toolchain;
}
