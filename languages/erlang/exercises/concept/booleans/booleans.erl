-module(booleans).
-export([can_fast_attack/1,
         can_spy/3,
         can_signal_prisoner/2,
         can_free_prisoner/4]).

can_fast_attack(KnightIsAwake) ->
    erlang:error("Not implemented").

can_spy(KnightIsAwake, ArcherIsAwake, PrisonerIsAwake) ->
    erlang:error("Not implemented").

can_signal_prisoner(ArcherIsAwake, PrisonerIsAwake) ->
    erlang:error("Not implemented").

can_free_prisoner(KnightIsAwake, ArcherIsAwake, PrisonerIsAwake, PetDogIsPresent) ->
    erlang:error("Not implemented").
