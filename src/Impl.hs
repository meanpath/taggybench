{-# LANGUAGE OverloadedStrings #-}
module Impl where

import           Control.Lens
import qualified Data.Text       as T
import qualified Data.Text.Lazy  as TL
import           Text.Taggy      (taggyWith)
import           Text.Taggy      (tagsNamed)
import           Text.Taggy.Lens (allNamed, attr, html)


allLinks :: TL.Text -> [T.Text]
allLinks bs = bs ^.. html . allNamed (only "a") . attr "href" . _Just

justTags :: TL.Text -> [T.Text]
justTags = map (T.pack . show) . tagsNamed "a" . taggyWith True

uglyText :: TL.Text -> [T.Text]
uglyText = map (T.concat . TL.toChunks . TL.takeWhile (/='>') . snd) . TL.breakOnAll  "<a"
