-module(average).
-export([average/1]).

average(L) ->
    sum(L) / length(L).

sum([]) -> 
    0;

sum([{Student, Grade} | Tail]) ->
    Grade + sum(Tail).