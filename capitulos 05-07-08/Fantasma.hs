data Fantasma a = Fantasma a

instance Functor Fantasma where
  fmap f (Fantasma x) = Fantasma (f x)

instance Show a => Show (Fantasma a) where
  show (Fantasma x) = "Fantasma " ++ show x
