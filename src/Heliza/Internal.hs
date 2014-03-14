module Heliza.Internal
    (
        compatter,
        pippo,
        firstWord
    ) where


compatter :: String -> String
compatter []        = []
compatter ('\'':xs) = compatter xs
compatter (x:xs)    = x : compatter xs    


pippo :: Integer -> [Char]
pippo x = "Pippo"

firstWord :: [String] -> String
firstWord list = head list
