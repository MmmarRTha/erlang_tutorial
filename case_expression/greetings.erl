-module(greetings).
-export([greet/3]).

greet(Name, Language, Member) ->
    case Language of
        english when Member > 0 -> io:format("Hello teacher, ~s~n", [Name]);
        english -> io:format("Hello student, ~s~n", [Name]);
        spanish when Member > 0-> io:format("Hola profe, ~s~n", [Name]);
        spanish -> io:format("Hola estudiante, ~s~n", [Name]);
        french when Member > 0 -> io:format("Bonjour professeur, ~s~n", [Name]);
        french -> io:format("Bonjour étudiant, ~s~n", [Name]);
        polish when Member > 0 -> io:format("Witaj nauczycielu, ~s~n", [Name]);
        polish -> io:format("Witaj studencie, ~s~n", [Name])
    end.