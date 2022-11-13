main = do
  () <- putStrLn "***********"
  foo <- putStrLn "***********" 
  _ <- putStrLn "***********"
  putStrLn "Hello input your name."
  name <- getLine
  putStrLn ("Hey " ++ name ++ ", you rock!")