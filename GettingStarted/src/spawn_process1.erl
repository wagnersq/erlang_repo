-module(spawn_process1).
-export([exec/0, f/0]).
 
exec() ->
    NewPid = spawn(?MODULE, f, []),
    NewPid ! {message, Message}.
 
f() ->
    receive
	{message, M} -> io:fwrite("~p", [M])
    end.
