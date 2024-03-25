module Logic (rng, getAnswer) where

import System.Random

rng :: Int -> Int -> IO Int
rng lower upper = getStdRandom (randomR (lower, upper)) :: IO Int

calculateAnswer :: Int -> Int -> Bool
calculateAnswer randomValue userValue =
    let answer = formatAnswer randomValue
    in answer == userValue
        
formatAnswer :: Int -> Int
formatAnswer value =
    if fmtVal > 60
    then fmtVal - 60
    else fmtVal
    where fmtVal = value + 30
    
displayAnswer :: Bool -> String
displayAnswer True = "CORRECT"
displayAnswer False = "WRONG"

getAnswer :: Int -> Int -> String
getAnswer genVal usrVal = displayAnswer $ calculateAnswer genVal usrVal