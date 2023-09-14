-----------------------------------As-Patterns-----------------------------------
--As-Patterns allows matching a pattern and binding a variable to the entire value being matched.

--Palindrome Function
isPalindrome :: Eq a => [a] -> Bool
isPalindrome [] = True           -- An empty list is a palindrome.
isPalindrome [_] = True          -- A single-element list is a palindrome.
isPalindrome xs@(x:rest) =       -- Using an as-pattern to bind the whole list to 'xs'.
  xs == reverse xs               -- Check if 'xs' is equal to its reverse.

-- Main function
main :: IO ()
main = do
  putStrLn "Enter a list :"
  input <- getLine
  let elements = filter (/= ' ') input -- Remove spaces from input string.
  if isPalindrome elements
    then putStrLn "It's a palindrome!"
    else putStrLn "It's not a palindrome!"