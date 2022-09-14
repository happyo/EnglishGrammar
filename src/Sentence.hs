module Sentence (
haha
) where

-- data Sentence =

-- data Verbs = IntransitiveVerbs | TransitiveVerbs | DitransitiveVerbs | ComplexTransitiveVerbs deriving (Show, Eq)
data IntransitiveVerbs = IV String deriving (Show, Eq)
data TransitiveVerbs = TV String deriving (Show, Eq)
data DitransitiveVerbs = DV String deriving (Show, Eq)
data ComplexTransitiveVerbs = CTV String deriving (Show, Eq)
data LinkingVerbs = LV String deriving (Show, Eq)

data Subject = Subject String deriving (Show, Eq)

data Predicate = Predicate String deriving (Show, Eq)

data DirectObject = DirectObject String deriving (Show, Eq)
data IndirectObject = IndirectObject String deriving (Show, Eq)

data Complement = Complement String deriving (Show, Eq)

data SimpleSentence
  = SIV Subject IntransitiveVerbs
  | STVD Subject TransitiveVerbs DirectObject
  | SDVID Subject DitransitiveVerbs IndirectObject DirectObject
  | SCTVDC Subject ComplexTransitiveVerbs DitransitiveVerbs Complement
  | SLVP Subject LinkingVerbs Predicate
  deriving (Show, Eq)

haha :: IO ()
haha = do
  print $ SIV (Subject "Papa Rabbits") (IV "sleeps")
