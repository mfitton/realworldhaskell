import Data.List (sortBy)
--exercises 1 and 2
size :: [a] -> Int
size (_:xs) = 1 + (size xs)
size [] = 0

--exercise 3
mean :: [Int] -> Double
mean xs = (fromIntegral (sum xs)) / (fromIntegral (length xs))

--exercise 4
makePalindrome :: [a] -> [a]
makePalindrome xs = xs ++ (myreverse xs)
makePalindrome [] = [] 

myreverse :: [a] -> [a]
myreverse (x:xs) = (myreverse xs) ++ [x]
myreverse [] = []

--exercise 5
isPalindrome xs = myreverse xs == xs 

--exercise 6
sortListsByLength xs = (sortBy lengthcomp) xs
                     where lengthcomp xs ys = (length xs) `compare` (length ys)

--exercises 7 and 8
intersperse :: a -> [[a]] -> [a]
intersperse sep (x1 : x2 : xs)  = x1 ++ [sep] ++ intersperse sep (x2 : xs)
intersperse sep [x1] = x1

--exercise 9
data Tree a = Node a (Tree a) (Tree a)
            | Empty

treeHeight :: Tree a ->	Int
treeHeight (Node nd lft rt) = 1 + (max (treeHeight lft) (treeHeight rt))  
treeHeight Empty = 0 
