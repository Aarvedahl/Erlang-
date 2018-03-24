%% @author Alex Arvedahl
%% @doc @todo Add Description to tut.

-module(tut).

-import(string, [len/1, concat/2, chr/2, substr/3, str/2, to_lower/1, to_upper/1]).

-export([main/0]).

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
    fibonacci().
    %%find_factorial(3).
    %spawner2(50, 1),
    %spawner2(100, 51).

factorial(N) when N == 0 -> 1;
factorial(N) when N > 0 -> N * factorial(N - 1).


find_factorial(X) ->
    Y = factorial(X),
    io:fwrite("Factorial : ~p\n", [Y]).

for2(0,_)  ->
    ok;

for2(Max, Min) when Max > 0 ->
    io:fwrite("Num : ~p\n", [Max]),
    for2(Max-1, Min).

spawner2(Max, Min) ->
    spawn(fun() -> for2(Max, Min) end).


fibonacci() ->
    %Try to access Fn-1 and Fn-2 if any of those doesn't exist then create it
    %    io:fwrite("Sum of fibonacci : ~p\n", [listFind(5, List1)]).

    List1 = [1,1,2,3,5],
    FibList = [],
    Sum = fib(2),
    case listFind(2, FibList) of
        false -> io:fwrite("Can't find the item");
        true -> io:fwrite("Can find the item")
    end.

fib(X) ->
    if X == 1 -> 1
    ; X > 1 -> fib(X - 1)
    end.

listFind(Element, List) ->
    lists:member(Element, List).

