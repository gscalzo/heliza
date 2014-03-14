module Heliza.Internal
    (
        compact,
        upCase,
        pippo,
        firstWord
    ) where

import Data.Char

compact :: String -> String
compact []        = []
compact ('\'':xs) = compact xs
compact (x:xs)    = x : compact xs    

upCase :: String -> String
upCase = map toUpper


pippo :: Integer -> [Char]
pippo x = "Pippo"

firstWord :: [String] -> String
firstWord list = head list
