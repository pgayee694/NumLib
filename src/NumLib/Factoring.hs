module NumLib.Factoring
    where

euclideanGcd 1 x = 1
euclideanGcd x 1 = 1
euclideanGcd x 0 = x
euclideanGcd 0 x = x
euclideanGcd x y =
    if x < y
        then euclideanGcd y x
        else if x == y
        then x
        else euclideanGcd y (mod x y)
