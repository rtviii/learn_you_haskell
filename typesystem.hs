-- http://learnyouahaskell.com/types-and-typeclasses

removeNonUppercase ::        [ Char]     ->[Char]
removeNonUppercase stringy = [ c | c <-  stringy, c `elem` ['A'..'Z']]