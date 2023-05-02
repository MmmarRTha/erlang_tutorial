-module(temperature).
-export([check_temperature/1]).

% if expression is used to compare a value against a set of patterns.
check_temperature(Temperature) ->
    if
        Temperature < 0 -> 
            io:format("It's freezing!~n");
        Temperature < 10 -> 
            io:format("It's cold!~n");
        Temperature < 20 -> 
            io:format("It's chilly!~n");
        Temperature < 30 -> 
            io:format("It's warm!~n");
        Temperature < 40 -> 
            io:format("It's hot!~n");
        true -> 
            io:format("It's scorching!~n")
    end.