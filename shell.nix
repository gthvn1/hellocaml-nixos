let
  nixpkgs = fetchTarball "https://github.com/NixOS/nixpkgs/tarball/nixos-24.11";
  pkgs = import nixpkgs { config = {}; overlays = []; };
in

pkgs.mkShell {
  packages = with pkgs; [
    opam
    helix
    lazygit
    ];

  shellHook = ''
    opam init --bare -n 1>/dev/null 2>&1
    eval $(opam env)
  '';

  COLORTERM = "truecolor";
}
