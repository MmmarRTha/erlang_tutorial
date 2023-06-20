-module(divide).
-export([divide/2, calculate/2]).
divide(A, B) when B == 0 ->
    error({divide_by_zero, A});
divide(A, B) ->
    A / B.

calculate(A, B) ->
    try divide(A, B) of
        Val -> {{A, B}, normal, Val}
    catch
        error:{divide_by_zero, _X} -> {divide_by_zero, error, {A, B}}
    after
        io:format("Cleanup resources~n")
    end.