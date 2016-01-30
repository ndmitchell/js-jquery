# js-jquery [![Hackage version](https://img.shields.io/hackage/v/js-jquery.svg?label=Hackage)](https://hackage.haskell.org/package/js-jquery) [![Build Status](https://img.shields.io/travis/ndmitchell/js-jquery.svg)](https://travis-ci.org/ndmitchell/js-jquery)

This package bundles the minified [jQuery](http://jquery.com/) code into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream jQuery version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).
As an example:

```haskell
import qualified Language.Javascript.JQuery as JQuery

main = do
    putStrLn $ "jQuery version " ++ show JQuery.version ++ " source:"
    putStrLn =<< readFile =<< JQuery.file
```
