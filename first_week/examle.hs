y :: Int
y = y + 1
i :: Int
i = -78
biggestInt, smallestInt :: Int
biggestInt  = maxBound
smallestInt = minBound

sumtorial :: Integer -> Integer
sumtorial 0 = 0
sumtorial n = n + sumtorial (n-1)

hailstone :: Integer -> Integer
hailstone n
    | n `mod` 2 == 0 = n `div` 2
    | otherwise      = 3*n + 1

foo :: Integer -> Integer
foo 0 = 16
foo 1
    | "Haskell" > "C++" = 3
    | otherwise         = 4
foo n
    | n < 0            = 0
    | n `mod` 17 == 2  = -43
    | otherwise        = n + 3

isEven :: Integer -> Bool
isEven n = n `mod` 2 == 0

sumPair :: (Int,Int) -> Int
sumPair (x,y) = x + y

f :: Int -> Int -> Int -> Int
f x y z = x + y + z
ex17 = f 3 17 8

nums, range, range2 :: [Integer]
nums   = [1,2,3,19]
range  = [1..100]
range2 = [2,4..100]

ex18 = 1 : []
ex19 = 3 : (1 : [])
ex20 = 2 : 3 : 4 : []
ex21 = [2,3,4] == 2 : 3 : 4 : []

hailstoneSeq :: Integer -> [Integer]
hailstoneSeq 1 = [1]
hailstoneSeq n = n : hailstoneSeq (hailstone n)

sumEveryTwo :: [Integer] -> [Integer]
sumEveryTwo []         = []
sumEveryTwo (x:[])     = [x]
sumEveryTwo (x:y:zs) = (x + y) : sumEveryTwo zs
