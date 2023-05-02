-module(loops).
-export([for/3, fordown/3, range/4]).

for(Max, Max, F) ->
    [F(Max)];
for(I, Max, F) ->
    [F(I)|for(I+1, Max, F)].

fordown(Min, Min, F) ->
    [F(Min)];
fordown(I, Min, F) ->
    [F(I)|fordown(I-1, Min, F)].

range(Max, Max, Step, F) ->
    [F(Max)];
range(I, Max, Step, F) ->
    [F(I)|range(Step(I), Max, Step, F)].