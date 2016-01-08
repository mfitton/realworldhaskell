data Tree a = Node a (Maybe (Tree a)) (Maybe (Tree a))
		deriving (Show)
myTree = (Node 4 (Just (Node 2 Nothing Nothing)) (Just (Node 3 Nothing Nothing)))
