-- | Fake cabal module for local building

module Paths_js_jquery where

import Data.Version
import System.Directory
import System.FilePath
import Text.ParserCombinators.ReadP


getDataFileName :: FilePath -> IO FilePath
getDataFileName x = do
    dir <- getCurrentDirectory
    return $ dir </> "javascript" </> x

version :: Version
-- can't write a literal Version value since in GHC 7.10 the versionsTag field is deprecated
version = head $ [v | (v,"") <- readP_to_S parseVersion "1.12.2"] ++ error "version, failed to parse"
