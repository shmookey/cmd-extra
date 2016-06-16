module Cmd.Extra exposing (return)

{-| Convenience functions for working with Cmd

# Basics
@docs return
-}

import Task

{-| A command to generate a message without performing any action.

This is useful for implementing components that generate events in the manner
of HTML elements, but where the event fires from within Elm code, rather than
by an external trigger.
-}
return : msg -> Cmd msg
return x = 
  Task.succeed () |> Task.perform (always x) (always x)

