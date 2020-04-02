-module(booleans).
-export([can_fast_attack/1,
         can_spy/3,
         can_signal_prisoner/2,
         can_free_prisoner/4]).

can_fast_attack(KnightIsAwake) ->
    not KnightIsAwake.

can_spy(KnightIsAwake, ArcherIsAwake, PrisonerIsAwake) ->
    KnightIsAwake orelse ArcherIsAwake orelse PrisonerIsAwake.

can_signal_prisoner(ArcherIsAwake, PrisonerIsAwake) ->
    not ArcherIsAwake andalso PrisonerIsAwake.

can_free_prisoner(KnightIsAwake, ArcherIsAwake, PrisonerIsAwake, PetDogIsPresent) ->
    BadGuysAreAsleep = not KnightIsAwake andalso not ArcherIsAwake,
    CanScareKnight = not ArcherIsAwake andalso PetDogIsPresent,
    PrisonerIsAwake andalso BadGuysAreAsleep orelse CanScareKnight.
