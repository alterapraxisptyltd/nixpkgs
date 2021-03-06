{ cabal, cmdargs, Elm, filepath, mtl, snapCore, snapServer
, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "elm-server";
  version = "0.11.0.1";
  sha256 = "0nnkhmmm4cl6a314xxh5qwxkjsc3k3vcwdfar62578ykarxb53g1";
  isLibrary = false;
  isExecutable = true;
  buildDepends = [
    cmdargs Elm filepath mtl snapCore snapServer unorderedContainers
  ];
  jailbreak = true;
  meta = {
    homepage = "http://elm-lang.org";
    description = "Server for developing Elm projects";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
