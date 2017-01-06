main =  do
     val1 <- readLn
     val2 <- readLn
     let sum = solveMeFirst val1 val2
     print sum

solveMeFirst a b = a + b