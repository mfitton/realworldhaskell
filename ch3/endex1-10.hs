size :: [a] -> Int
size (_:xs) = 1 + (size xs)
size [] = 0

mean :: [Int] -> Double
mean xs = (fromIntegral (sum xs)) / (fromIntegral (length xs))

makePalindrome :: [a] -> [a]
makePalindrome xs = xs ++ (myreverse xs)
makePalindrome [] = [] 
 
isPalindrome xs = myreverse xs == xs 

myreverse :: [a] -> [a]
myreverse (x:xs) = (myreverse xs) ++ [x]
myreverse [] = []
