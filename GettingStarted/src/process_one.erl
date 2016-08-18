%% @author wagnersq
%% @doc @todo Add description to process_one.

% Here we define the name of the module,
% it must be the name of the file too
-module(process_one).

%% =======================================================
%% API functions
%% =======================================================

-export([start/0, request_number_to_words/2]).

%% =======================================================
%% Start a new process that runs till process is killed.
%% =======================================================

start() -> spawn(fun() -> loop() end).

%% =======================================================
%% Exposed service.
%% =======================================================

request_number_to_words(Pid,Number) -> 
	Pid ! {self(), Number},

	receive
		{Pid, Response} -> Response 
	end.

%% =======================================================
%% Internal functions
%% =======================================================

loop() -> 
	receive
		{From_pid, 1} ->
			From_pid ! {self(), one},
			loop();

		{From_pid, 2} ->
			From_pid ! {self(), two},
			loop();

		{From_pid, 3} ->
			From_pid ! {self(), three},
			loop();

		{From_pid, Any} ->
			From_pid ! {self(), undefined},
			loop()
	end.