{
  description = "My presentation for Lambda Conf 2024!";

  outputs = { self, nixpkgs }:
  let
    system = "x86_64-linux";
    pkgs = import nixpkgs {
      inherit system;
    };
  in 
  {

    devShells.${system}.default = pkgs.mkShell rec {
      name = "LambdaConf2024";
      buildInputs = with pkgs; [
        reveal-md

        (vscode-with-extensions.override {
          vscode = pkgs.vscodium;
          vscodeExtensions = with pkgs.vscode-extensions; [
            jnoortheen.nix-ide
            yzhang.markdown-all-in-one
          ] ++ pkgs.vscode-utils.extensionsFromVscodeMarketplace [
            {
              name = "vscode-office";
              publisher = "cweijan";
              version = "3.1.5";
              sha256 = "sha256-9K0WbvLLJzNGfs3GRMG6YC4wLcy8B5PQknE7Uo+3cC0=";
            }
            {
              name = "code-spell-checker";
              publisher = "streetsidesoftware";
              version = "3.0.1";
              sha256 = "sha256-KeYE6/yO2n3RHPjnJOnOyHsz4XW81y9AbkSC/I975kQ=";
            }
          ];
        })
      ];

      shellHook = ''
        export PS1+="${name}> "
        echo "Welcome to Lambda Conf talk! :)"
      '';
    };
  }; 

}

