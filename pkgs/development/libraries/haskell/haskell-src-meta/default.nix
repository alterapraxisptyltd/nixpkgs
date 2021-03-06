{ cabal, haskellSrcExts, syb, thOrphans, uniplate }:

cabal.mkDerivation (self: {
  pname = "haskell-src-meta";
  version = "0.6.0.7";
  sha256 = "0cxqh35cd2j6ljsmgjisgm9pn26rj01x43mkn9jk6qs1fbqspb4d";
  buildDepends = [ haskellSrcExts syb thOrphans uniplate ];
  jailbreak = true;
  meta = {
    description = "Parse source to template-haskell abstract syntax";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = [ self.stdenv.lib.maintainers.andres ];
  };
})
