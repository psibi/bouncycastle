module Main where

import ThreeFishEngine

main :: IO ()
main = do
  blk <- threeFishProcessBlock 1 2 3 4
  print $ getLong blk 0
  print $ getLong blk 1
  print $ getLong blk 2
  print $ getLong blk 3
