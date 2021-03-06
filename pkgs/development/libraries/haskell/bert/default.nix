{ cabal, async, binary, binaryConduit, conduit, conduitExtra, mtl
, network, parsec, smallcheck, tasty, tastyHunit, tastySmallcheck
, time, void
}:

cabal.mkDerivation (self: {
  pname = "bert";
  version = "1.2.2.2";
  sha256 = "0bjrqgm0dpsrk1nivxmw2wvx33v7z7swgy3p5fb51vg7y81776cz";
  buildDepends = [
    binary binaryConduit conduit conduitExtra mtl network parsec time
    void
  ];
  testDepends = [
    async binary network smallcheck tasty tastyHunit tastySmallcheck
  ];
  meta = {
    homepage = "https://github.com/feuerbach/bert";
    description = "BERT implementation";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.ocharles ];
  };
})
