%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Aug 2017 10:42 PM
%%%-------------------------------------------------------------------
-module(recursion).
-author("Biswarup _Ghosh").

%% API
-export([fib/1,pieces/1]).
fib(0) ->
  0;
fib(1)->
  1;
fib(X)->
  fib(X-2)+fib(X-1).
pieces(0)->
  0;
pieces(1)->
  2;
pieces(2)->
  4;
pieces(N)->
  N+pieces(N-1).