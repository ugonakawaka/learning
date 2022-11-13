import Data.List


wordNums :: String -> [(String, Int)]
wordNums = map (\ws -> (head ws, length ws)) . group . sort . words

-- 関数合成なしで書くと↓
wordNums' :: String -> [(String, Int)]
wordNums' xs = map (\ws -> (head ws, length ws)) (group (sort (words xs)))