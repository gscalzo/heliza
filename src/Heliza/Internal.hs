module Heliza.Internal
    (
        compact,
        upCase,
        purify,
    ) where

import Data.Char

compact :: String -> String
compact []        = []
compact ('\'':xs) = compact xs
compact (x:xs)    = x : compact xs    

upCase :: String -> String
upCase = map toUpper

purify :: String -> String
purify = upCase . compact
