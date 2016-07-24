-module(length_unit_conversion).
-export([convert_length/1]).

convert_length({_, 0}) ->
   {error, unconvertable_value};

convert_length(Length) ->
   case Length of
      {centimeter, X} -> {inch, X / 2.54};
      {inch, Y} -> {centimeter, Y * 2.54}
end. 