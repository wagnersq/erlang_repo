-module(spawn_process).
-export([do_spawn/0, call/2]).
 
call(Arg1, Arg2) ->
    io:format("~p ~p~n", [Arg1, Arg2]).
 
do_spawn() ->
    %% Equivalent to SpawnProcess:call("hello", "process"),
    Pid = spawn(?MODULE, call, ["hello", "process"]),
    Pid.
