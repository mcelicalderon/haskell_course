{-# OPTIONS_GHC -Wall #-}
module LogAnalysis where

import Log

identifyMessage :: [String] -> MessageType
identifyMessage [] = Warning
identifyMessage ("I":ys) = Info
identifyMessage (x:ys) = Warning
