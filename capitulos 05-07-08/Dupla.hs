data Dupla a = Dupla a Int a

instance Functor Dupla where
  fmap f (Dupla x n y) = Dupla (f x) n (f y)

instance Show a => Show (Dupla a) where
  show (Dupla x n y) = "Dupla " ++ show x ++ " " ++ show n ++ " " ++ show y
