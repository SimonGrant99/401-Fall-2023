-- Program-ID: Language Survey
-- Haskell Language
-- Author: Pao-pao gang
-- OS: Windows 10/11
-- Compiler: 
-- Note: This program prints the string "Looping" 10 times as well as the value of 'n'.

main :: IO ()
main = do
    let n = 10
    printTLoop n
    putStr "The value of n is: "
    print n

printTLoop :: Int -> IO()
printTLoop 0 = return ()
printTLoop n
    | n < 0 = error "Negative numbers in TLoop = bad"
    | otherwise = do
        putStr "Looping "
        print n
        printTLoop (n - 1)