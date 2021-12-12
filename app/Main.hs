module Main where

-- import System.Directory

import Lib
import Options.Applicative

data Options = Options {
    repo    :: String,
    keyword :: String
    }
    deriving Show

options :: Parser Options
options = Options
        <$> strOption
        (  long "repo"
        <> short 'r'
        <> value "desmond"
        <> help "partial repo name"
        )
        <*> strOption

-- data Command
--     = Get Options
--     | Set


parseCommand :: Parser Command
parseCommand = subparser $
    command "get"


main :: IO ()
main = do
    name <- getLine
    putStrLn $ "hi, " ++ name
