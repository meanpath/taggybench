module Main where

import           Criterion      (bench, whnf)
import           Criterion.Main (defaultMain)
import qualified Data.Text      as T
import qualified Data.Text.IO   as TIO
import qualified Data.Text.Lazy as TL
import           Impl

main :: IO ()
main = do
  text <- TIO.readFile "./bigcommerce.html"
  let ltext = TL.fromChunks [text]
  print (uglyText  ltext)
  defaultMain [bench "fullparse" $ whnf (T.concat . allLinks) ltext
              ,bench "justTags" $ whnf (T.concat . justTags) ltext
              ,bench "uglyText" $ whnf (T.concat . uglyText) ltext
              ]
