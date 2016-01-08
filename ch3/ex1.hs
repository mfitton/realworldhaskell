data List a = Cons a (List a)
            | Nil

fromList :: List a -> [a]
fromList (Cons a as) = a : (fromList as)
fromList (Nil)       = []
