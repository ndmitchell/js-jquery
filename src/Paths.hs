-- | Fake cabal module for local building
module Paths_js_jquery (getDataFileName, version) where

import Data.Version
import System.Directory
import System.FilePath
import Text.ParserCombinators.ReadP

getDataFileName :: FilePath -> IO FilePath
getDataFileName x = do
    dir <- getCurrentDirectory
    pure $ dir </> "javascript" </> x

version :: Version
-- can't write a literal Version value since in GHC 7.10 the versionsTag field is deprecated
version = head $ [v | (v, "") <- readP_to_S parseVersion "3.7.1"] ++ error "version, failed to parse"
