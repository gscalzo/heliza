module Main where

import Heliza.Internal
import Paths_heliza

main :: IO ()
main = do
    print $ pippo 1
    file <- getDataFileName "data/keywords.txt"
    kContens <- readFile file
    let keywords = lines kContens
    print keywords