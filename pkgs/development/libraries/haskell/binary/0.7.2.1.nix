{ cabal, Cabal, filepath, HUnit, QuickCheck, random, testFramework
, testFrameworkQuickcheck2
}:

cabal.mkDerivation (self: {
  pname = "binary";
  version = "0.7.2.1";
  sha256 = "0s0idmcmribgajxxnxdvppnz62qyxwrj9iy34pi7nvm41gj6q5nz";
  testDepends = [
    Cabal filepath HUnit QuickCheck random testFramework
    testFrameworkQuickcheck2
  ];
  meta = {
    homepage = "https://github.com/kolmodin/binary";
    description = "Binary serialisation for Haskell values using lazy ByteStrings";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
