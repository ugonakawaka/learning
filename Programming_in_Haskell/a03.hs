lucky :: Int -> String
lucky 7 = "LUCJY NUMBER SEVEN!"
lucky x = "Sorry, you're out of luck, pal!"

-- 
sayMe :: Int -> String
sayMe 1 = "One!"
sayMe 2 = "Two!"
sayMe 3 = "Three!"
sayMe 4 = "Four!"
sayMe 5 = "Five!"
sayMe x = "Not between 1 nad 5"

--
factorial :: Int -> Int
factorial 0 = 1
factorial x = x * factorial (x - 1)

--
charName :: Char -> String
charName 'a' = "Albert"
charName 'b' = "Broseph"
charName 'c' = "Cecil"

--
addVectors :: (Double, Double) -> (Double, Double) -> (Double, Double)
addVectors (x1, y1) (x2, y2) = (x1 + x1, y1 + y2)

--
first :: (a, b, c) -> a
first (x, _, _) = x
second :: (a, b, c) -> b
second (_, x, _) = x
third :: (a, b, c) -> c
third (_, _, x) = x

--
head' :: [a] -> a
head' [] = error "Can't call head on an empty list, Dummy!"
head' (a:_) = a

--
tell :: (Show a) => [a] -> String
tell [] = "This list is empty"
tell (x:[]) = "This list has one element: " ++ show x
tell (x:y:[]) = "This list has two elements: " ++ show x ++ " and " ++ show y
tell (x:y:_) = "This list is long: " ++ show x ++ " and " ++ show y

--
badAdd :: (Num a) => [a] -> a
badAdd (x:y:z:[]) = x + y + z

--
firstLetter :: String -> String
firstLetter all@(x:xs) = "The first letter of " ++ all ++ " is " ++ [x]

--
bmiTell :: Double -> String
bmiTell bmi
  | bmi <= 18.5 = "ok"
  | bmi <= 25.0 = "ng 1"
  | bmi <= 30.0 = "ng 2"
  | otherwise = "oooh"

--
bmiTell2 :: Double -> Double -> String
bmiTell2 weight height
  | weight / height ^ 2 <= 18.5 = "ok"
  | weight / height ^ 2 <= 25.0 = "ng 1"
  | weight / height ^ 2 <= 30.0 = "ng 2"
  | otherwise = "oooh"

--
max' :: (Ord a) => a -> a -> a
max' a b
  | a > b = a
  | otherwise = b

--
myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a == b = EQ
  | a <= b = LT
  | otherwise = GT

--



