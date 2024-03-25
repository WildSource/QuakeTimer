module Main where

import Control.Monad
import Logic

main :: IO ()
main = forever $ do
    randomValue <- rng 0 60
    let value = randomValue :: Int
    
    print randomValue
    putStrLn "When is the item gonna respawn ?"
    
    respawnTime <- getLine
    let time = read respawnTime :: Int
    
    print $ getAnswer value time
    putStrLn ""