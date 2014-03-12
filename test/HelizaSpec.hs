module HelizaSpec (main, spec) where

import Test.Hspec
import Heliza.Internal
import Paths_heliza

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "pippo" $ do
    it "should return its name" $ do
        (pippo 1) `shouldBe` "Pippo"

  describe "firstWord" $ do
    it "should return first word of a list of words" $ do
        file <- getDataFileName "data/keywords.txt"
        kContens <- readFile file
        --kContens `shouldBe`"aaa"
        let keywords = lines kContens

        (firstWord keywords) `shouldBe` "CAN YOU"
