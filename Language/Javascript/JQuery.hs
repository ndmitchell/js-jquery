
-- | Module for accessing the minified jQuery sources,
--   originally obtained from <http://jquery.com/>.
module Language.Javascript.JQuery(
    file, url, version
    ) where

import qualified Paths_js_jquery as Paths
import Data.List
import Data.Version


-- | A local file containing the minified jQuery sources for the version matching this package.
file :: IO FilePath
file = Paths.getDataFileName name

-- | A remote URL of the jQuery sources for the version matching this package.
--   The URL /does not/ have a protocol prefix, so some users may need to append
--   either @\"http:\"@ or @"\https:\"@ to the front. The URL currently uses
--   the jQuery links at <http://code.jquery.com/>. Other links are available from
--   <http://jquery.com/download/#using-jquery-with-a-cdn>.
url :: String
url = "//code.jquery.com/" ++ name

name = "jquery-" ++ intercalate "." (map show $ versionBranch version) ++ ".min.js"

-- | Version of jQuery bundled in this package (not the version of the package itself,
--   although they will match in at least the first three digits).
version :: Version
version = Version (take 3 $ versionBranch Paths.version) []

