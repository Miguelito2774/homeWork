myLast :: [a] -> a
myLast xs = head (reverse xs)

-- Another possible solution?
myLast2 :: [a] -> a
myLast2 [] = error "Empty list"
myLast2 [x] = x
myLast2 (_ : xs) = myLast2 xs
