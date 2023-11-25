let
  pkgs = import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/nixos-23.05.tar.gz") { };
  fenix = import (fetchTarball "https://github.com/nix-community/fenix/archive/main.tar.gz") { };
in {
  inherit (pkgs)
    direnv
    emacs29
    glibcLocalesUtf8
    libtool
    nix-direnv
    nodejs_20
    ripgrep
  ;
  rust = fenix.stable.toolchain;
}
