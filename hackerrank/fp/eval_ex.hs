import Control.Applicative
import Control.Monad
import System.IO

main :: IO ()
main =  do
  n_temp <- getLine
  let n = read n_temp :: Int
  forM_ [1..n] $ \a0 -> do
    x_temp <-getLine
    let x = read x_temp :: Double
    print  $ expp x

getMultipleLines :: Int -> IO[String]

getMultipleLines n
  | n<=0 = return []
  | otherwise = do
      x<- getLine
      xs <-getMultipleLines (n-1)
      let ret = (x:xs)
      return ret
    

expp :: Double -> Double
expp x = sum $ zipWith (\y1 y2 -> y1/y2) a b
  where
    a = scanl (*) 1.0 (replicate 9 x)
    b = scanl (*) 1.0 [1..9]
