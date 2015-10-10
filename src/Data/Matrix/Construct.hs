{-# LANGUAGE DataKinds #-} 

module Data.Matrix.Construct (
  matrix, Matrix
) where

import qualified Data.Vector as V

matrix :: Num a => a
matrix = 1

data Matrix a = M {
   nrow :: Int
 , ncol :: Int
 , vect :: V.Vector a
}

isSquareMatrix :: Matrix a  => a -> Bool
isSquareMatrix = (==) (nrow a) (ncol a)

invertible :: Matrix a => a -> Bool
invertible = (/=) 0 $ determinant a


