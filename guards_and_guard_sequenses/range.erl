-module(range).
-export([range/1]).

% Guard sequences are evaluated in order until one evaluates to true. (;) is the or operator.

range(X) when is_integer(X); X > 10; X < 100 ->
    io:format("~w is in range~n", [X]);
range(X) ->
    io:format("~w is not in range~n", [X]).