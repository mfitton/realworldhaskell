import Data.List (sortBy)
-- exercises 1 and 2
size :: [a] -> Int
size (_:xs) = 1 + (size xs)
size [] = 0

-- exercise 3
mean :: [Int] -> Double
mean xs = (fromIntegral (sum xs)) / (fromIntegral (length xs))

-- exercise 4
makePalindrome :: [a] -> [a]
makePalindrome xs = xs ++ (myreverse xs)
makePalindrome [] = [] 

myreverse :: [a] -> [a]
myreverse (x:xs) = (myreverse xs) ++ [x]
myreverse [] = []

-- exercise 5
isPalindrome xs = myreverse xs == xs 

-- exercise 6
sortListsByLength xs = (sortBy lengthcomp) xs
                     where lengthcomp xs ys = (length xs) `compare` (length ys)

-- exercises 7 and 8
intersperse :: a -> [[a]] -> [a]
intersperse sep (x1 : x2 : xs)  = x1 ++ [sep] ++ intersperse sep (x2 : xs)
intersperse sep [x1] = x1

-- exercise 9
data Tree a = Node a (Tree a) (Tree a)
            | Empty

treeHeight :: Tree a ->	Int
treeHeight (Node nd lft rt) = 1 + (max (treeHeight lft) (treeHeight rt))  
treeHeight Empty = 0 

-- exercise 10
data Direction = Left | Right | Straight
instance Show Direction where 
	show Main.Left = "Left"
        show Main.Right = "Right"
        show Main.Straight = "Straight"

data Point = Point {
                    x :: Double,
                    y ::  Double
                   } deriving (Show)
-- I calculate the vectors pointing from A to B and from A to C.
-- Then I scale the vector from A to C such that it has the same x value as
-- the vector from A to B. Then, I compare the y coordinates of the two
-- vectors to determine which direction to turn.
turnDir :: Point -> Point -> Point -> Direction
turnDir a b c  
              | res == GT = Main.Left
              | res == LT = Main.Right
              | res == EQ = Main.Straight
        -- vecSub a b yields the vector that points from b to a
	where
              d          = (x ab) / (x ac)
              res       = (y (scalMul ac d)) `compare` (y ab)
              vecSub a b = Point ((x a) - (x b)) ((y a) - (y b))
              scalMul v s = Point ((x v) * s) ((y v) * s)
              ab         = vecSub b a
              ac         = vecSub c a
              
samplePts = (Point 0 0, Point 1 1, Point 1 2)
otherSamplePts = (Point 2 2, Point (-1) 5, Point 16 16)
lastSamplePts = (Point 0 0, Point 1 1, Point 2 2)

