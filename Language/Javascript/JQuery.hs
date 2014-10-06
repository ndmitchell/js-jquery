
module Language.Javascript.JQuery(
    file, url, version
    ) where

import qualified Paths_js_jquery as Paths
import Data.List
import Data.Version


file :: IO FilePath
file = Paths.getDataFileName name

url :: String
url = "//code.jquery.com/" ++ name

name = "jquery-" ++ intercalate "." (map show $ versionBranch version) ++ ".min.js"

version :: Version
version = Version (take 3 $ versionBranch Paths.version) []

