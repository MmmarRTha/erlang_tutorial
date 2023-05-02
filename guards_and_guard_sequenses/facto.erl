-module(facto).
-export([factorial/1]).

% head(Arg1, Arg2, ...) [when Guard1, Guard2, ... GuardN] -> Body.
% head(Arg1, Arg2, ...) [when Guard1; Guard2; ...GuardN]-> Body.
% guards reduce the number of function clauses needed to handle different cases.

factorial(N) when N < 2 ->
    1;
factorial(N) ->
    N * factorial(N-1).