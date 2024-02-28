-- Correct:  The script below contains three syntactic errors. Correct these errors and then check that your script works properly using GHCi.
-- N = a ’div’ length xs
--  where
--      a = 10
--      xs = [1,2,3,4,5]
n :: Int
n = a `div` length xs
  where
    a = 10
    xs :: [Integer]
    xs = [1, 2, 3, 4, 5]

-- Replaced single quotes with backticks in div operator.I