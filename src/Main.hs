module Main where

--import Heliza.Internal
--import Paths_heliza

main :: IO ()
main = do
      s <- getContents
      let r = map processIt (lines s)
      putStr (unlines r)
    --file <- getDataFileName "data/keywords.txt"
    --kContens <- readFile file
    --let keywords = lines kContens
    --print keywords

processIt :: String -> String
processIt s = "You insert a string of " ++ show (length s) ++ " characters"