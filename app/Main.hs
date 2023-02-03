module Main (main) where

import Lib

fac :: Integer -> Integer
fac x = aux x 1
	where
		aux x acc
			| x <= 1 = acc
			| otherwise = aux (x-1) (x*acc)

main :: IO ()
main = do
	n <- getLine
	let result = fac (read n :: Integer)
	print result
