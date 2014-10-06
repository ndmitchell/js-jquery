# js-jquery [![Hackage version](https://img.shields.io/hackage/v/js-jquery.svg?style=flat)](http://hackage.haskell.org/package/js-jquery) [![Build Status](http://img.shields.io/travis/ndmitchell/js-jquery.svg?style=flat)](https://travis-ci.org/ndmitchell/js-jquery)

This package bundles the minified [jQuery](http://jquery.com/) code into a Haskell package,
so it can be depended upon by Cabal packages. The first three components of
the version number match the upstream jQuery version. The package is designed
to meet the redistribution requirements of downstream users (e.g. Debian).
As an example:

    import qualified Language.Javascript.JQuery as JQuery

    main = do
        putStrLn $ "jQuery version " ++ show JQuery.version ++ " source:"
        putStrLn =<< readFile =<< JQuery.file
