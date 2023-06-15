-module(gol).
-export([new/2, query/3, assign/4, print/1, step_cell/3, simulate/1, run_simulation/2, demo_grid/0]).

-record(grid, {height=10, width=10, rows}).
-record(transition, {y, x, state}).

mod(X, Y) when X > 0 -> X rem Y;
mod(X, Y) when X < 0 -> Y + X rem Y;
mod(0, _Y) -> 0.


new(Height, Width) ->
    Column = array:new(Height),
    Array2d = array:map(fun(_X, _T) -> array:new([{size, Width}, {fixed, true}, {default, empty}]) end, Column),
    #grid{height=Height, width=Width, rows=Array2d}.
    