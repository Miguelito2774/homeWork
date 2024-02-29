import Data.Char (isDigit)

type Expression = String

type Operator = Char

type Operand = String

type ExpressionTuple = (Operand, Operator, Operand)

isOperator :: Char -> Bool
isOperator = (`elem` "+-*/")

priority :: Char -> Int
priority '+' = 1
priority '-' = 1
priority '*' = 2
priority '/' = 2
priority _ = 0

tupleFromExpression :: Expression -> (ExpressionTuple, Expression)
tupleFromExpression xs = ((left, operator, right), rest)
  where
    (left, op : xs') = span isDigit xs
    operator = op
    (right, rest) = span isDigit xs'

addParenthesis :: Expression -> Expression
addParenthesis "" = ""
addParenthesis expr
  | null rest || nextOperator == ' ' = left ++ [operator] ++ right
  | priority operator > priority nextOperator =
      left ++ [operator] ++ addParenthesis (right ++ rest)
  | otherwise =
      "(" ++ left ++ [operator] ++ right ++ ")" ++ addParenthesis rest
  where
    ((left, operator, right), rest) = tupleFromExpression expr
    nextOperator = if null rest then ' ' else head rest
