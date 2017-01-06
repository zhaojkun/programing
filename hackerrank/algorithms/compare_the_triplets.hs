import Control.Applicative
import Control.Monad
import System.IO

main :: IO()
main = do
     a0_temp <- getLine
     let a0_t = words a0_temp
     let a0 = read $ a0_t!!0 ::Int
     let a1 = read $ a0_t!!1 :: Int
     let a2 = read $ a0_t!!2 :: Int
     b0_temp <- getLine
     let b0_t = words b0_temp
     let b0 = read $ b0_t!!0 :: Int
     let b1 = read $ b0_t!!1 :: Int
     let b2 = read $ b0_t!!2 :: Int

     let (ra,rb) = calc_score [a0,a1,a2] [b0,b1,b2]
     putStrLn(show ra ++ " " ++ show rb)
     
calc_score :: [Int] ->  [Int] -> (Int,Int)

calc_score [] _ = (0,0)
calc_score _ [] = (0,0)
calc_score (a:as) (b:bs) 
           | a>b = (reta+1,retb) 
           | a<b = (reta,retb+1)
           | otherwise = (reta,retb)
           where (reta,retb) = calc_score as bs
           
