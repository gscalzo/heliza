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
    it "should handle empty string" $ do
        (compact "") `shouldBe` ""

  describe "upCase" $ do
    it "should return string in uppercase" $ do
        (upCase "im a ibm 370") `shouldBe` "IM A IBM 370"
    it "should handle empty string" $ do
        (upCase "") `shouldBe` ""

  describe "purify" $ do
    it "should return string without apostrophes in uppercase" $ do
        (purify "I'm A ib'M 37'0") `shouldBe` "IM A IBM 370"

