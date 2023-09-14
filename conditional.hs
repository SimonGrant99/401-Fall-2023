-- Program-ID: Language Survey
-- Haskell Language
-- Author: Pao-pao gang
-- OS: Windows 10/11
-- Compiler: 
-- Note: This program demonstrates conditional statements in Haskell.
--       The program also demonstrates how the method can be unique to Haskell.
{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use even" #-}

main :: IO ()
main = do
    putStrLn "Enter an integer: "
    userInput <- getLine
    let n = read userInput :: Integer
    putStrLn $ "The number you entered is: " ++ evenOdd n

evenOdd :: Integer -> String
evenOdd n =
    -- In Haskell % is not a recognized operator, so you use `mod` in its place.
    if n `mod` 2 == 0
        then "Even"
        else "Odd"