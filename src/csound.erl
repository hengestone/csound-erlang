-module(csound).
-export([start/0, send/1]).

start() ->
  {ok, _, I} = exec:run("/usr/bin/csound --daemon --port=4456 -odac -+rtaudio=pulse test.csd", [stdin, stdout, monitor]),
  {ok, I}.

send(Msg) ->
  {ok, Socket} = gen_udp:open(0,[binary]),
  ok = gen_udp:send(Socket, "localhost", 4456, Msg),
  gen_udp:close(Socket).