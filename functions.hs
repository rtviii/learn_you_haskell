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

-- Prelude> [let square x = x * x in (square 4, square 3, square 2)]
-- [(25,9,4)]

-- Prelude>  let square x = x * x in [ square 4, square 3, square 2]
-- [25,9,4]

-- accept  a list of pairs of weight + height and return a list of bmis
calcBmis :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2]  


-- Combined with a predicate
calcBmis' :: (RealFloat a) => [(a, a)] -> [a]  
calcBmis' xs = [bmi | (w, h) <- xs, let bmi = w / h ^ 2, bmi >= 25.0]  