--  Pattern matching
lucky :: (Integral a) => a -> String  
lucky 7 = "LUCKY NUMBER SEVEN!"  
lucky x = "Sorry, you're out of luck, pal!"   

factorial :: (Integral a) => a -> a  
factorial 0 = 1  
factorial n = n * factorial (n - 1)  

islong :: [a] -> String  
islong [] = "Empty"
islong l =  if length l > 4 then "long" else "not so long"