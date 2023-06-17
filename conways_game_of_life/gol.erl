-module(gol).
-export([new/2, query/3, print/1, assign/4,  step_cell/3, simulate/1, run_simulation/2, demo_grid/0]).

-record(grid, {height=10, width=10, rows}).
-record(transition, {y, x, state}).

mod(X, Y) when X > 0 -> X rem Y;
mod(X, Y) when X < 0 -> Y + X rem Y;
mod(0, _Y) -> 0.

new(Height, Width) ->
    Column = array:new(Height),
    Array2d = array:map(fun(_X, _T) -> array:new([{size, Width}, {fixed, true}, {default, empty}]) end, Column),
    #grid{height=Height, width=Width, rows=Array2d}.

query(Grid, Y, X) ->
    Row = array:get(mod(Y, Grid#grid.height), Grid#grid.rows),
    array:get(mod(X, Grid#grid.width), Row).

draw(Value) ->
    case Value of
        empty -> "-";
        alive -> "*"
    end.

print(Grid) ->
    ColumnIndex = lists:seq(0, Grid#grid.width - 1),
    RowIndex = lists:seq(0, Grid#grid.height - 1),
    lists:foreach(fun(Y) ->
        io:format("|"),
        lists:foreach(fun(X) ->
            io:format(" ~s |", [draw(query(Grid, Y, X))]) end, ColumnIndex),
            io:format("~n") 
        end, RowIndex).
