{ cabal, exceptions, HUnit, ListLike, monadControl, mtl, parallel
, QuickCheck, testFramework, testFrameworkHunit
, testFrameworkQuickcheck2, transformers, transformersBase
}:

cabal.mkDerivation (self: {
  pname = "iteratee";
  version = "0.8.9.6";
  sha256 = "1yc5fqqb8warvgld3cymka7d2wmjydvfin5jy7zaazb7alf14q1p";
  buildDepends = [
    exceptions ListLike monadControl parallel transformers
    transformersBase
  ];
  testDepends = [
    exceptions HUnit ListLike monadControl mtl QuickCheck testFramework
    testFrameworkHunit testFrameworkQuickcheck2 transformers
    transformersBase
  ];
  meta = {
    homepage = "http://www.tiresiaspress.us/haskell/iteratee";
    description = "Iteratee-based I/O";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
