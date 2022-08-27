doubleMe x = x + x  

doubleUs x y = doubleMe x + doubleMe y  

comprehension=[x*2 | x <- [1..10], x*2 >= 12]  
rightTriangles'  perimeter = [ (a,b,c) | c <- [1..10], b <- [1..c], a <- [1..b], a^2 + b^2 == c^2, a+b+c == perimeter]  