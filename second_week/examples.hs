data FailableDouble = Failure
                    | OK Double
  deriving Show

ex03 = case "Hello" of
         []      -> 3
         ('H':s) -> length s
         _       -> 7
