bmiTell :: Double -> String
bmiTell bmi
 | bmi <= 18.5 = "Youe're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal.\
                  \ Pffft, I bet you're ugly!"
 | bmi <= 30.0 = "You're fat! Lose some weight, fattly!"
 | otherwise   = "You're a whale, congratulations!"

bmiTell2 :: Double -> Double -> String
bmiTell2 weight height
 | weight / height ^ 2 <= 18.5 = "Youe're underweight, you emo, you!"
 | weight / height ^ 2 <= 25.0 = "You're supposedly normal.\
                  \ Pffft, I bet you're ugly!"
 | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fattly!"
 | otherwise   = "You're a whale, congratulations!"

 
max' :: (Ord a) => a -> a -> a
max' a b
  | a <= b    = b
  | otherwise = a
  
myCompare :: (Ord a) => a -> a -> Ordering
a `myCompare` b
  | a == b    = EQ
  | a <= b    = LT
  | otherwise = GT

bmiTell3 :: Double -> Double -> String
bmiTell3 weight height
 | bmi <= 18.5 = "Youe're underweight, you emo, you!"
 | bmi <= 25.0 = "You're supposedly normal.\
                  \ Pffft, I bet you're ugly!"
 | bmi <= 30.0 = "You're fat! Lose some weight, fattly!"
 | otherwise   = "You're a whale, congratulations!"
 where bmi = weight / (height ^ 2)


bmiTell4 :: Double -> Double -> String
bmiTell4 weight height
 | bmi <= skinny = "Youe're underweight, you emo, you!"
 | bmi <= normal = "You're supposedly normal.\
                  \ Pffft, I bet you're ugly!"
 | bmi <= fat    = "You're fat! Lose some weight, fattly!"
 | otherwise     = "You're a whale, congratulations!"
 where bmi = weight / (height ^ 2)
       skinny = 18.5
       normal = 25.0
       fat    = 30.0

badGreeting :: String
badGreeting = "Oh! Pfft. It's you."
niceGreeting :: String
niceGreeting = "Hello! So very noce to see you, "

greet :: String -> String
greet "Juan" = niceGreeting ++ " Juan!"
greet "Fernando" = niceGreeting ++ " Fernando!"
greet "Ugo" = niceGreeting ++ " Ugo!"
greet name = badGreeting ++ " " ++ name

-- パターンマッチとwhere
initials :: String -> String -> String
initials firstname lastname = [f] ++ ". " ++ [l] ++ "."
 where (f:_) = firstname
       (l:_) = lastname

{-
whereブロックの中の関数
体重と身長のペアのリストを受け取ってBMIのリストを返す関数
-} 
calcBmis :: [(Double, Double)] -> [Double]
calcBmis xs = [bmi w h | (w, h) <- xs]
  where bmi weight height = weight / (height ^ 2)


--
cylinder :: Double -> Double ->Double
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea  = pi * r ^2
  in sideArea + 2 * topArea

-- リスト内包表記でのlet
calcBmis2 :: [(Double, Double)] ->[(Double)]
calcBmis2 xs = [bmi | (w,h) <- xs, let bmi = w / h -2]

calcBmis3 :: [(Double, Double)] ->[(Double)]
calcBmis3 xs = [bmi | (w,h) <- xs, let bmi = w / h -2, bmi > 25.0]
