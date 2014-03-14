module Heliza.Internal
    (
        compatter,
        upCase,
        pippo,
        firstWord
    ) where

import Data.Char

compatter :: String -> String
compatter []        = []
compatter ('\'':xs) = compatter xs
compatter (x:xs)    = x : compatter xs    

upCase :: String -> String
upCase = map toUpper


pippo :: Integer -> [Char]
pippo x = "Pippo"

firstWord :: [String] -> String
firstWord list = head list
