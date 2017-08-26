%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. Aug 2017 8:00 PM
%%%-------------------------------------------------------------------
-module(pat_match_3).
-author("Biswarup _Ghosh").

%% API
-export([bits/1,tail_bits/1]).
bits(0)-> 0;
bits(1)-> 1;
bits(N)->
  N rem 2 + bits(N div 2).

tail_bits(N)-> tail_bits_rec(N,0).

tail_bits_rec(0,M)->
  M;

tail_bits_rec(N,M)->
  tail_bits_rec(N div 2,M + N rem 2).

perimeter ({circle,{X,Y},R}) ->
  math:pi()*2 *R;

perimeter ({recatange,{X,Y},H,W})->
  2*(H + W );
perimeter({triangle,{X,Y},A,B,C})->
  A+B+C.


enclose({circle,{X,Y},R})->
  R*R;
enclose({recatange,{X,Y},H,W})->
  H*W;

enclose({triangle,{X,Y},A,B,C})->
  H = math:sqrt(math:pow(B,2)- math:pow(A div 2,2)),
  A*H .









