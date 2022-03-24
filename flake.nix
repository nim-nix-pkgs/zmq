{
  description = ''ZeroMQ 4 wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zmq-master".dir   = "master";
  inputs."zmq-master".owner = "nim-nix-pkgs";
  inputs."zmq-master".ref   = "master";
  inputs."zmq-master".repo  = "zmq";
  inputs."zmq-master".type  = "github";
  inputs."zmq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v0_2_2".dir   = "v0_2_2";
  inputs."zmq-v0_2_2".owner = "nim-nix-pkgs";
  inputs."zmq-v0_2_2".ref   = "master";
  inputs."zmq-v0_2_2".repo  = "zmq";
  inputs."zmq-v0_2_2".type  = "github";
  inputs."zmq-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v0_3_1".dir   = "v0_3_1";
  inputs."zmq-v0_3_1".owner = "nim-nix-pkgs";
  inputs."zmq-v0_3_1".ref   = "master";
  inputs."zmq-v0_3_1".repo  = "zmq";
  inputs."zmq-v0_3_1".type  = "github";
  inputs."zmq-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v0_3_4".dir   = "v0_3_4";
  inputs."zmq-v0_3_4".owner = "nim-nix-pkgs";
  inputs."zmq-v0_3_4".ref   = "master";
  inputs."zmq-v0_3_4".repo  = "zmq";
  inputs."zmq-v0_3_4".type  = "github";
  inputs."zmq-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_0_1".dir   = "v1_0_1";
  inputs."zmq-v1_0_1".owner = "nim-nix-pkgs";
  inputs."zmq-v1_0_1".ref   = "master";
  inputs."zmq-v1_0_1".repo  = "zmq";
  inputs."zmq-v1_0_1".type  = "github";
  inputs."zmq-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_2_0".dir   = "v1_2_0";
  inputs."zmq-v1_2_0".owner = "nim-nix-pkgs";
  inputs."zmq-v1_2_0".ref   = "master";
  inputs."zmq-v1_2_0".repo  = "zmq";
  inputs."zmq-v1_2_0".type  = "github";
  inputs."zmq-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_2_1".dir   = "v1_2_1";
  inputs."zmq-v1_2_1".owner = "nim-nix-pkgs";
  inputs."zmq-v1_2_1".ref   = "master";
  inputs."zmq-v1_2_1".repo  = "zmq";
  inputs."zmq-v1_2_1".type  = "github";
  inputs."zmq-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_3_0".dir   = "v1_3_0";
  inputs."zmq-v1_3_0".owner = "nim-nix-pkgs";
  inputs."zmq-v1_3_0".ref   = "master";
  inputs."zmq-v1_3_0".repo  = "zmq";
  inputs."zmq-v1_3_0".type  = "github";
  inputs."zmq-v1_3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_3_1".dir   = "v1_3_1";
  inputs."zmq-v1_3_1".owner = "nim-nix-pkgs";
  inputs."zmq-v1_3_1".ref   = "master";
  inputs."zmq-v1_3_1".repo  = "zmq";
  inputs."zmq-v1_3_1".type  = "github";
  inputs."zmq-v1_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}