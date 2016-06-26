-module(printdate).
-export([now/0, nowtodatetime/0, datetimetostr/0, printdatetime/0]).

%% Prints the formated datetime. 

printdatetime() ->
	Res = datetimetostr(),
	io:format("~p~n", [Res]).

datetimetostr() -> {{Year, Month, Day}, {Hour, Minute, Second}} = printdate:nowtodatetime(),
		   lists:flatten(io_lib:format("~4..0w-~2..0w-~2..0wT~2..0w:~2..0w:~2..0w",[Year,Month,Day,Hour,Minute,Second])).

nowtodatetime() -> calendar:now_to_datetime(printdate:now()).

now() -> erlang:now().
