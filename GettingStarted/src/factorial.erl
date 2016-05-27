-module(factorial).
-export([fac/1]).

%% calculates the arg factorial

fac(0) ->
   1;
fac(N) ->
   N * fac(N - 1).
