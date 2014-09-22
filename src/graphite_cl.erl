-module(graphite_cl).

%% API.
-export([start/0]).

%% API.

start() ->
	application:set_env(estatsd, graphite_host, "192.168.0.93"),
	application:set_env(estatsd, graphite_port, 2003),
	application:set_env(estatsd, flush_interval, 1000),
	ok = application:start(estatsd),
	ok = application:start(graphite_cl).