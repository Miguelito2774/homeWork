myInit :: [a] -> [a]
myInit xs = reverse (tail (reverse xs))

-- Another possible solution? Pattern Matching
init :: [a] -> [a]
init [] = [] -- base case for an empty list, returns an empty list
init [_] = [] -- base case for a single-element list, removes the only element
init (x : xs) = x : myInit xs
