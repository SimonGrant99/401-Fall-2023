--Immutability: pure_function is pure functions, which means it doesn't have side effects and will always produce the same output for the same input. Function add, which takes multiple arguments, can be partially applied

pure_function :: Int -> Int
pure_function x  = x + 1
              
concatenate_name :: String -> String
concatenate_name name = "Hello, " ++ name ++ "!"

quickSort []  = []
quickSort (x:xs) = quickSort (filter (<x) xs)
                   ++ [x] ++
                  quickSort (filter (>=x) xs)

add a b = a + b
square x = x * x
tripleSquare = square . pure_function  . square


main :: IO ()
main = do
  putStrLn "What is your name?"
  name <- getLine
  putStrLn $"Hello, " ++ name ++ "!"
  putStrLn $ "Enter number: "
  input <- getLine

  let parsedInput = read input :: Int
      result = pure_function parsedInput 
  putStrLn $ "The result of pure_function is: " ++ show result
  let myname = concatenate_name input
  putStrLn $ "QuickSort: [2,8,7,10,1,9,5,3,4,6]: "
  print $ quickSort [2,8,7,10,1,9,5,3,4,6]
  putStrLn $ "QuickSort: [2,8,7,10,1,9,5,3,4,6]: "
  
  putStrLn $ "Add func add 1 1 : "
  print $ add 1 1
  putStrLn $ "Result of let c 1: "
  let c = add 1
  print $ c 1
  putStrLn $ "(add 1) 2 func: "
  print( (add 1) 2)

  putStrLn $ "tripleSquare func: "
  print $ tripleSquare 2 


