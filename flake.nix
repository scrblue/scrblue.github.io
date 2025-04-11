{
  description = "Lyne.dev DevShell";

  inputs = {
    flake-utils.url = "github:numtide/flake-utils";
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";
  };

  outputs = { self, flake-utils, nixpkgs }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = import nixpkgs {
          inherit system;
        };
      in
      with pkgs;
      {

        devShells.default = mkShell {
          buildInputs = [
            vscode-langservers-extracted
          ];

          shellHook = ''
          '';
        };
      }
    );
}
