-module(hot_code_change).
-export([start/1, loop/0]).
 
start(Node) ->
    spawn(Node,?MODULE,loop,[]).
    %% NewPid = spawn(?MODULE, f, []),
    %% NewPid ! {message, Message}.
 
loop() ->
    receive
		switch ->
			hot_code_change:loop();
		hello ->
			erlang:display('HI'),
			loop();
        Anything ->
			erlang:display({self(),Anything}),
			loop()
    end.
