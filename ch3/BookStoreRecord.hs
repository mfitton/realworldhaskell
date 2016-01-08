data BookInfo = Book {
	customerID :: Int,
        title :: String,
        authors :: [String]
        } deriving (Show)

-- Example of the BookStore using record syntax instead of a bunch of attr accessors.
