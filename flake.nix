{
  description = ''ZeroMQ 4 wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."zmq-master".url = "path:./master";
  inputs."zmq-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v0_2_2".url = "path:./v0_2_2";
  inputs."zmq-v0_2_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v0_2_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v0_3_1".url = "path:./v0_3_1";
  inputs."zmq-v0_3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v0_3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v0_3_4".url = "path:./v0_3_4";
  inputs."zmq-v0_3_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v0_3_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_0_1".url = "path:./v1_0_1";
  inputs."zmq-v1_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_2_0".url = "path:./v1_2_0";
  inputs."zmq-v1_2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."zmq-v1_2_1".url = "path:./v1_2_1";
  inputs."zmq-v1_2_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."zmq-v1_2_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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