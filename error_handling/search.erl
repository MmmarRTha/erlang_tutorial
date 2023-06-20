-module(search).
-export([search_one/2, search/2]).

search_one(Element, List) ->
    Result = lists:filter(fun(X) -> X  == Element end, List),
    if
        length(Result) == 0 -> throw({notFound, Element});
        length(Result) > 1 -> throw({notUnique, Element});
        true -> lists:nth(1, Result)
    end.

search(Element, List) ->
    try search_one(Element, List) of
        Value -> {ok, Value}
    catch
        _:_ -> io:format("Incorrect input~n") %catch all errors
    end.