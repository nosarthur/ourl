module Main where

import Lib


main :: IO ()
main = do
    name <- getLine
    putStrLn $ "hi, " ++ name
