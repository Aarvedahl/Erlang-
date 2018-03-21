%% @author Alex Arvedahl
%% @doc @todo Add Description to tut.

-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([double/1, add/2, add/3, divide/2]).

double(X) ->
    2 * X.

add(A, B) ->
    A + B.

add(A, B, C) ->
    A + B + C.

divide(A, B) ->
    A /B.