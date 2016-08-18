-module(sum_of_multiples).
-export([summing_the_multiples_between_3_and_5_smaller_than_1000/0]).

summing_the_multiples_between_3_and_5_smaller_than_1000() ->
    lists:sum([X || X <- lists:seq(1,999), X rem 3 == 0 orelse X rem 5 == 0]).