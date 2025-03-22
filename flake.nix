{
  description = "Standalone flake for go-crx3";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = inputs @ {
    flake-parts,
    nixpkgs,
    ...
  }:
    flake-parts.lib.mkFlake {inherit inputs;} {
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];

      perSystem = {
        pkgs,
        system,
        self',
        ...
      }: {
        packages.default = pkgs.buildGoModule {
          pname = "go-crx3";
          version = "v1.5.1";

          src = pkgs.fetchFromGitHub {
            owner = "mmadfox";
            repo = "go-crx3";
            rev = "94c08009bbd26902aa352caa26b33726006b0707";
            sha256 = "sha256-J3v3/Rz6rPTJnIEahWvJO6KGIC6idqJ/39wPC4zApbE=";
          };

          vendorHash = "sha256-LEIB/VZA3rqTeH9SesZ/jrfVddl6xtmoRWHP+RwGmCk=";

          doCheck = false;

          meta = {
            description = "Tool to create Chrome CRX3 extensions";
            homepage = "https://github.com/mmadfox/go-crx3";
            license = pkgs.lib.licenses.asl20;
            maintainers = with pkgs.lib.maintainers; [];
          };
          meta.mainProgram = "crx3";
        };

        apps.default = {
          type = "app";
          program = self'.packages.default;
        };

        devShells.default = pkgs.mkShell {
          packages = [pkgs.go];
        };
      };
    };
}
