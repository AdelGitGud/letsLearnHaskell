module Main (main) where

import Lib

fac :: Integer -> Integer
fac x =
	if x <= 1 then
		1
	else
		x * fac (x-1)

main :: IO ()
main = do
	n <- getLine
	let result = fac (read n :: Integer)
	print result
