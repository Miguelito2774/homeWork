module HanoiTowers (hanoi) where

-- | Thanks to the module, you will be able to use the hanoi function in other files.

-- | Function to solve the Towers of Hanoi problem.
-- The function takes four parameters:
--
-- * @n@: Number of disks.
-- * @source@: Name of the source rod.
-- * @destination@: Name of the destination rod.
-- * @auxiliary@: Name of the auxiliary rod.
--
-- To solve the Towers of Hanoi problem.
hanoi :: Int -> String -> String -> String -> [(String, String)] -- The function returns a list of pairs of strings representing the moves needed to solve the Towers of Hanoi problem.
hanoi 0 _ _ _ = [] -- Base case: no disks to move
hanoi n source destination auxiliary =
  -- Recursive case: move n - 1 disks from source to auxiliary, then move the nth disk from source to destination, and finally move the n - 1 disks from auxiliary to destination
  hanoi (n - 1) source auxiliary destination -- Move n - 1 disks from source to auxiliary
    ++ [(source, destination)] -- Move the nth disk from source to destination
    ++ hanoi (n - 1) auxiliary destination source -- Moves the remaining disks from auxiliary to destination.