-module(palindrome).
-export([is_palindrome/1]).
-import(string, [slice/3]).

first_character(Str) ->
    slice(Str, 0, 1).

last_character(Str) ->
    slice(Str, length(Str) - 1, 1).

middle_characters(Str) ->
    slice(Str, 1, length(Str) - 2).

compare_first_and_last(Str) ->
    first_character(Str) == last_character(Str).

is_palindrome(Str) when length(Str) < 2 ->
    true;
is_palindrome(Str) when length(Str) == 2 ->
    compare_first_and_last(Str);
is_palindrome(Str) ->
    case compare_first_and_last(Str) of
        true ->
            is_palindrome(middle_characters(Str));
        false ->
            false
    end.