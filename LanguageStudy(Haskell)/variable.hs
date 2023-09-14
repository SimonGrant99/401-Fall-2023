import Data.List
import System.IO

{- 
1. To run a Haskell program, make sure that you installed Haskell compilers such as ghc
and ghci.
2. Use a text editor to write your code
3. Open your terminal for your corresponding OS and go to the correct file path
4. Run ghci 
5. Run :l <the name of your file>.hs
6. Use :r to run & compile your program before calling functions.
-}

-- Int -2^63 2^63 (bounded)
-- Int's can only be whole numbers
maxInt = maxBound :: Int
minInt = minBound :: Int

-- Immutability
always5 :: Int
always5 = 5

quickSum q = always5 + 5
-- Will always be 5 so this answer will always be 10

-- Integer (unbounded so it can make realllllyy big numbers)
factorial :: Integer -> Integer
factorial n = product[1..n]

-- Float (floating point with single precision)
circumference :: Float -> Float
circumference r = 2 * pi * r

-- Double (floating point with double precision)
circumference2 :: Double -> Double
circumference2 r = 2 * pi * r

-- Bool (it can only have two value which are True and False)
trueBool = True
falseBool = False

-- Char (represents a character and is denoted by single quotes. a list of characters is a string)
myLetter = 'k'
myString = "Hello World"
