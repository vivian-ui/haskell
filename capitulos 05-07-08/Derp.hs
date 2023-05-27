-- Definição do tipo Derp
data Derp a = Derp {runDerp :: Bool -> a}

-- Instância de Functor para Derp
instance Functor Derp where
  fmap f (Derp runDerp) = Derp (f . runDerp)

-- Instância de Applicative para Derp
instance Applicative Derp where
  pure x = Derp (\_ -> x)
  (Derp f) <*> (Derp x) = Derp (\b -> f b (x b))

instance Show a => Show (Derp a) where
  show (Derp runDerp) = "Derp <function>"
