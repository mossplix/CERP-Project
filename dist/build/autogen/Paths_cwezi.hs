module Paths_cwezi (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/mossplix/.cabal/bin"
libdir     = "/Users/mossplix/.cabal/lib/cwezi-0.0.0/ghc-7.0.4"
datadir    = "/Users/mossplix/.cabal/share/cwezi-0.0.0"
libexecdir = "/Users/mossplix/.cabal/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "cwezi_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "cwezi_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "cwezi_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "cwezi_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
