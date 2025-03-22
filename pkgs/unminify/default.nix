{
  lib,
  stdenv,
  fetchFromGitHub,
  nodejs,
  callPackage,
  pkgs,
}: let
  nodeEnv = import ./composition.nix {
    inherit pkgs nodejs;
    inherit (stdenv.hostPlatform) system;
  };
in
  stdenv.mkDerivation {
    pname = "unminify";
    version = "2.0.0";

    src = fetchFromGitHub {
      owner = "shapesecurity";
      repo = "unminify";
      rev = "1a000607c53cf73bdb61022a10bec6ad86f12062";
      hash = "sha256-M5aL0caliyuujfrh27BbO5RhmIN8va2Y26xQSsdcbYs=";
    };

    nativeBuildInputs = [nodejs];

    postUnpack = ''
      echo "[DEBUG] Injecting node_modules..."
      cp -r ${nodeEnv.nodeDependencies}/lib/node_modules "$sourceRoot/node_modules"
    '';

    installPhase = ''
      runHook preInstall

      mkdir -p $out/libexec/unminify
      cp -r . $out/libexec/unminify

      mkdir -p $out/bin
      cat > $out/bin/unminify <<EOF
      #!${stdenv.shell}
      exec ${nodejs}/bin/node $out/libexec/unminify/bin/cli.js "\$@"
      EOF
      chmod +x $out/bin/unminify

      runHook postInstall
    '';

    meta = with lib; {
      description = "Undo minification of JavaScript code using an AST";
      homepage = "https://github.com/shapesecurity/unminify";
      license = licenses.asl20;
      maintainers = [];
      platforms = platforms.all;
    };
  }
