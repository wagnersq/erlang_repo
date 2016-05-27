% hello world program
-module(helloworld).
%-compile(export_all).
-export([start/0]).

start() ->
   io:fwrite("Hello, world!\n").
