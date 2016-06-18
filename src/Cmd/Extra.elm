module Cmd.Extra exposing (message)

{-| Convenience functions for working with Cmd

# Basics
@docs message
-}

import Task

{-| A command to generate a message without performing any action.

This is useful for implementing components that generate events in the manner
of HTML elements, but where the event fires from within Elm code, rather than
by an external trigger.
-}
message : msg -> Cmd msg
message x =
  Task.perform identity identity (Task.succeed x) 

