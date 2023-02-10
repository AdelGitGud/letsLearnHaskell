module Main (main) where

import Lib

main :: IO Int
main = do
        putStrLn "Welcome to the game!"
        putStrLn "Please enter a number between 1 and 100"
        x <- getLine
        let x' = read x :: Int
        playGame x'

playGame :: Int -> IO Int
playGame x = do
        putStrLn "Please enter your a number matching the one previously entered"
        y <- getLine
        let y' = read y :: Int
        if y' == x
        then do
                putStrLn "You win!"
                return 0
        else do
                putStrLn "You lose!"
                playGame y'
