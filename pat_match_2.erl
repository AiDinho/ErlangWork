%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. Aug 2017 7:58 PM
%%%-------------------------------------------------------------------
-module(pat_match_2).
-author("Biswarup _Ghosh").

%% API
-export([xOr/2,xOr2/2,xOr3/2,maxThree/3]).
xOr(true,false)->true;
xOr(false,true) -> true;
xOr(_,_)-> false.
xOr2(X,Y) ->   X =/= Y .
xOr3(X,Y) -> ((X or Y) and not(X and Y)).
maxThree(X,Y,Z)->
  max(max(X,Y),Z).

