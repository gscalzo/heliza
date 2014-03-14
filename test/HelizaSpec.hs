module HelizaSpec (main, spec) where

import Test.Hspec
import Heliza.Internal
import Paths_heliza

main :: IO ()
main = hspec spec

spec :: Spec
spec = do
  describe "compact" $ do
    it "should return string without apostrophes" $ do
        (compact "I'M A IB'M 37'0") `shouldBe` "IM A IBM 370"

  describe "upCase" $ do
    it "should return string in uppercase" $ do
        (upCase "im a ibm 370") `shouldBe` "IM A IBM 370"

  describe "firstWord" $ do
    it "should return first word of a list of words" $ do
        file <- getDataFileName "data/keywords.txt"
        kContens <- readFile file
        --kContens `shouldBe`"aaa"
        let keywords = lines kContens

        (firstWord keywords) `shouldBe` "CAN YOU"
