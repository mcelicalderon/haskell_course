-- Exercise 1
toDigits :: Integer -> [Integer]
toDigits 0 = []
toDigits n
         | n < 0     = []
         | otherwise = toDigits (n `div` 10) ++ [n `mod` 10]

toDigitsRev :: Integer -> [Integer]
toDigitsRev 0 = []
toDigitsRev n
            | n < 0     = []
            | otherwise = [n `mod` 10] ++ toDigitsRev (n `div` 10)

toDigitsRevAlt :: Integer -> [Integer]
toDigitsRevAlt n = reverse (toDigits n)

-- Exercise 2
doubleEveryOther :: [Integer] -> [Integer]
doubleEveryOther x = reverse (doubleEveryOtherFromLeft (reverse x))

doubleEveryOtherFromLeft :: [Integer] -> [Integer]
doubleEveryOtherFromLeft []       = []
doubleEveryOtherFromLeft [x]      = [x]
doubleEveryOtherFromLeft (x:y:zs) = x : y*2 : doubleEveryOtherFromLeft zs

-- Exercise 3
sumDigits :: [Integer] -> Integer
sumDigits [] = 0
sumDigits x = foldl (+) 0 (map (sum) (map (toDigits) x))
