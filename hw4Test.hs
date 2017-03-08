import Test.Hspec
import Test.QuickCheck
import Control.Exception (evaluate)
import HW4

main :: IO ()
main = hspec $

  describe "fun2'" $
    it "should give same result as fun2" $ do
      fun2' 1 `shouldBe` fun2 1
      fun2' 2 `shouldBe` fun2 2
      fun2' 8 `shouldBe` fun2 8
