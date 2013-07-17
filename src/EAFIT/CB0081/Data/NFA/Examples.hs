module EAFIT.CB0081.Data.NFA.Examples where

import EAFIT.CB0081.Data.NFA
import Data.Set

nonemptyNFA :: NFA Int Char
nonemptyNFA = MkNFA states
              symbols
              delta
              initial_state
              final_states
  where
    states::Set Int
    states = fromList [0,1,2,3,4]
    symbols :: Set Char
    symbols = fromList ['a', 'b']
    initial_state::Int
    initial_state = 0
    final_states = fromList [3]               
    delta :: Int -> Char -> Set Int
    delta 0 'a' = singleton 1
    delta 1 'b' = singleton 2
    delta 2 'a' = fromList [1,2]
    delta 3 'a' = singleton 4
    delta 2 'b' = fromList [3]
    delta _ _   = error_state
    error_state = singleton 5

emptyNFA :: NFA Int Char
emptyNFA = MkNFA states
              symbols
              delta
              initial_state
              final_states
  where
    states::Set Int
    states = fromList [0,1,2,3,4]
    symbols :: Set Char
    symbols = fromList ['a', 'b']
    initial_state::Int
    initial_state = 0
    final_states = fromList [3]               
    delta :: Int -> Char -> Set Int
    delta 0 'a' = singleton 1
    delta 1 'b' = singleton 2
    delta 2 'a' = fromList [1,2]
    delta 3 'a' = singleton 4
    delta 2 'b' = fromList [4]
    delta _ _   = error_state
    error_state = singleton 5

