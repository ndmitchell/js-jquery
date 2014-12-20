-- | Fake cabal module for local building

module Paths_js_jquery where

import Data.Version
import System.Directory
import System.FilePath


getDataFileName :: FilePath -> IO FilePath
getDataFileName x = do
    dir <- getCurrentDirectory
    return $ dir </> "javascript" </> x

version :: Version
version = Version [1,11,2] []
