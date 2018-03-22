%% @author Alex Arvedahl
%% @doc @todo Add Description to tut.

-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([double/1, add/2, add/3, divide/2, var_stuff/0, main/0]).

double(X) ->
    2 * X.

add(A, B) ->
    A + B.

add(A, B, C) ->
    A + B + C.

divide(A, B) ->
    A /B.

var_stuff() ->
    Num = 1,
    Num.


preschool() ->
    'Go to preschool'.

kindergarten() ->
    'Go to kindergarten'.

grade_school() ->
    'Go to grade school'.

%% Read semicolon as OR, comma as AND, full stop as END
what_grade(Grade) ->
    if Grade < 5 -> preschool()
    ; Grade == 5 -> kindergarten()
    ; Grade > 5 -> grade_school()
    end.

main() ->
    find_factorial(3).

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).


find_factorial(X) ->
    Y = factorial(X),
    io:fwrite("Factorial : ~p\n", [Y]).
