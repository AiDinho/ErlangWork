%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Aug 2017 11:32 PM
%%%-------------------------------------------------------------------
-module(tail_recursion).
-author("Biswarup _Ghosh").

%% API
-export([sum_upto_n/1,tail_fibonaci/1,tail_perfect/1]).
sum_upto_n(N)->
  sum_upto_n(N,0).
sum_upto_n(0,P)->
  P;
sum_upto_n(N,P)->
  sum_upto_n(N-1,P+N).

tail_fibonaci(0)->
  0;
tail_fibonaci(1)->
  1;
tail_fibonaci(N)->
  tail_fibonaci(0,1,N).
tail_fibonaci(A,B,0)->
  A;
tail_fibonaci(A,B,N)when N>0 ->
  tail_fibonaci(B,A+B,N-1).

tail_perfect(N)->
  tail_perfect(N,N/2,1,0).

tail_perfect(N,0.0,I,J)->
  N==J;
tail_perfect(N,M,I,J) when M >0  ->
  if N rem I =/=0 ->
    tail_perfect(N,M-1,I+1,J);
  true ->
    tail_perfect(N,M-1,I+1,J+I)
  end.

