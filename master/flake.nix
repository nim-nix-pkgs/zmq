{
  description = ''ZeroMQ wrapper'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-zmq-master.flake = false;
  inputs.src-zmq-master.ref   = "refs/heads/master";
  inputs.src-zmq-master.owner = "nim-lang";
  inputs.src-zmq-master.repo  = "nim-zmq";
  inputs.src-zmq-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-zmq-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-zmq-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}