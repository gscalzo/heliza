main = do
    kContens <- readFile "keywords.txt"
    let keywords = lines kContens
    print keywords