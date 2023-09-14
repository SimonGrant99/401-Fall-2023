-----------------------------------Wild-Cards-----------------------------------
--Wild-cards can be used as placeholders in patterns to ignore specific parts of a value.

-- Function to check if a list contains the number 42
contains42 :: [Int] -> Bool
contains42 [] = False                -- Base case
contains42 (x:xs)                    -- Wild-Card is x itself 
    | x == 42 = True                 -- If first element is 42, return True
    | otherwise = contains42 xs      -- Otherwise, recursively check the rest of the list

-- Main function
main :: IO ()
main = do
    let myList = [1, 2, 3, 42, 5]
    
    -- Check if list contains 42 using contains42 function
    if contains42 myList
        then putStrLn "The list contains 42."           -- If it does, print this message
        else putStrLn "The list does not contain 42."   -- If it doesn't, print this message