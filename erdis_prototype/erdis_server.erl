-module(erdis_server).
-export([start_server/0, stop_server/0]).

-record(entry, {key, value}).

initialize_db() ->
    mnesia:create_schema([node()]),
    mnesia:start(),
    mnesia:create_table(entry, [{attributes, record_info(fields, entry)}]).

