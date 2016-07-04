-module(print_pid_process).
-export([start/1, loop/0]).
 
start(Node) ->
    spawn(Node,?MODULE,loop,[]).
    %% NewPid = spawn(?MODULE, f, []),
    %% NewPid ! {message, Message}.
 
loop() ->
    receive
        Anything ->
	    erlang:display({self(),Anything}),
	    loop ()
    end.
