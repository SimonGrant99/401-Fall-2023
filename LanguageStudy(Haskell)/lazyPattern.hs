-----------------------------------Lazy-Patterns-----------------------------------
--Lazy patterns allow you to defer their evaluation until they are actually needed.

-- Lazy Fibonacci calculation
lazyFibonacci :: Int -> [Integer]
lazyFibonacci n = fibs
  where
    -- Define an infinite list of Fibonacci numbers
    fibs = 0 : 1 : zipWith (+) fibs (tail fibs)

-- Strict Fibonacci calculation
strictFibonacci :: Int -> [Integer]
strictFibonacci n = fibs
  where
    -- Define a list of Fibonacci numbers using explicit indexing
    fibs = 0 : 1 : [f | i <- [2 .. n - 1], let f = fibs !! (i - 1) + fibs !! (i - 2)]

main :: IO ()
main = do
  let n = 10  -- Change this value to the desired number of Fibonacci numbers
  putStrLn "Lazy Fibonacci:"
  -- Use the lazy Fibonacci function to calculate and print the first n Fibonacci numbers
  print $ take n (lazyFibonacci n)

  putStrLn "\nStrict Fibonacci:"
  -- Use the strict Fibonacci function to calculate and print the first n Fibonacci numbers
  print $ take n (strictFibonacci n)