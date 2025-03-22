{
  fetchFromGitHub,
  buildGoModule,
  lib,
  ...
}:
buildGoModule {
  pname = "go-crx3";
  version = "v1.5.1";

  src = fetchFromGitHub {
    owner = "mmadfox";
    repo = "go-crx3";
    rev = "1a000607c53cf73bdb61022a10bec6ad86f12062";
    sha256 = "sha256-J3v3/Rz6rPTJnIEahWvJO6KGIC6idqJ/39wPC4zApbE=";
  };

  vendorHash = "sha256-LEIB/VZA3rqTeH9SesZ/jrfVddl6xtmoRWHP+RwGmCk=";

  doCheck = false;

  meta = {
    description = "Tool to create Chrome CRX3 extensions";
    homepage = "https://github.com/mmadfox/go-crx3";
    license = lib.licenses.asl20;
    maintainers = with lib.maintainers; [];
  };
  meta.mainProgram = "crx3";
}
