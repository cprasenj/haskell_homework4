module HW4 where

fun1 :: [Integer] -> Integer
fun1 [] = 1
fun1 (x:xs)
  | even x = (x - 2) * fun1 xs
  | otherwise = fun1 xs

fun1' :: [Integer] -> Integer
fun1' = foldl1 (\x y -> if even y then (*) x . (-) 2 $ y else x)

fun2 :: Integer -> Integer
fun2 1 = 0
fun2 n
  | even n = n + fun2 (n `div` 2)
  | otherwise = fun2 (3 * n + 1)

fun2' :: Integer -> Integer
fun2' number = foldl (+) 0 $ takeWhile (\n -> n > 1) $ scanl (\x y -> if even x then div x 2 else 3 * x + 1) number [1..]
--
