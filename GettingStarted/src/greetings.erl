%% @author wagnersq
%% @doc @todo Add description to greetings.

% Here we define the name of the module,
% it must be the name of the file too
-module(greetings).

%% ========================================
%% API functions
%% ========================================

% Here we list the name of functions in the format of
% function_name/arity(i.e number of formal parameters)

-export([say_hello/0, say_my_greeting/1]).

% Here we define a function.
% Note the "." at the end,
% this marks the end of the function
say_hello() -> get_greeting().

% This function takes a variable named Greeting.
% rule := all variables MUST start with an uppercase letter.
% rule := variable can bound only once within a scope, i.e single assigment.
% Note how statements are separated in the function body using ","
% this implies the semantics of AND operation

say_my_greeting(Greeting) ->
	io:format(Greeting, []),
	io:format("~n", []).

%% ========================================
%% Internal functions
%% ========================================

get_greeting() ->
	io:format("Hello world!~n", []).
