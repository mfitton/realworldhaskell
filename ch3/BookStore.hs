--file: ch03/BookStore.hs
data BookInfo = Book Int String [String]
                deriving (Show)

type CustomerID = Int
type ReviewBody = String
type CardHolder = String
type CardNumber = String
type Address = [String]

data BookReview = BookReview BookInfo CustomerID ReviewBody
data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                   deriving (Show)

getID      (Book id _ _)      = id
getTitle   (Book _ title _)   = title
getAuthors (Book _ _ authors) = authors

data Customer = Customer {
			id :: Int,
			name :: String,
			address :: [String]
			} deriving (Show)


-- BookInfo is a type constructor. Book is a value constructor (or a data constructor). The type constructor declares the name of the type itself, while Book is a function which creates and returns a value of type BookInfo.
-- Type constructor names are used only within type signatures and declarations, while the value constructors are only used within the code itself. Thus the type constructor and the value constructor are frequently given the same name, since doing so creates no ambiguity.
