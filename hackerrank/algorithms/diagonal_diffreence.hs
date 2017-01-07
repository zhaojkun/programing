import Control.Applicative
import Control.Monad
import System.IO

main :: IO()
main = do
     n_temp <- getLine
     let n =read n_temp ::Int
     a_temp <- getMultipleLines n
     let a = map ( map (read::String->Int) . words) a_temp
     let b1 = abs $ sum [a!!i!!i - a!!i!!(n-1-i) | i <-[0..n-1]]
     print b1

getMultipleLines :: Int -> IO[String]

getMultipleLines n
   | n<=0 = return []
   | otherwise = do
              x <- getLine
              xs <- getMultipleLines (n-1)
              let ret = (x:xs)
              return ret