-- file: ch03/add.hs

sumList (x:xs) = x + sumList xs
sumList []     = 0

-- The main point is that pattern matching is more of less deconstructing a type constructor to see which value constructor was used to instantiate that type and thus to break the type into its constituent parts.
