import Data.Char

main = do
    putStrLn ""
    firstName <- getLine
    putStrLn ""
    lastName <- getLine
    let bigFirstName = map toUpper firstName
    let bigLastName  = map toUpper lastName
    putStrLn $ "hey" ++ bigFirstName ++ " "
                    ++ bigLastName 
                    ++ ","