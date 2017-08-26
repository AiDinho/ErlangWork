%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 15. Aug 2017 10:00 PM
%%%-------------------------------------------------------------------
-module(pat_match).
-export([xOr1/2,xOr2/2,xOr3/2,xOr5/2,maxThree/3,test/0]).



xOr1(true,false)->true;
xOr1(false,true)->true;
xOr1(X,Y)->false.

xOr2(true,false)->true;
xOr2(false,true)->true;
xOr2(_,_)->false.

xOr3(X,Y)-> X =/= Y.

xOr5(X,Y)-> not(X) == Y.

maxThree(X,X,X)->
  X;
maxThree(X,Y,Z)->
  max(max(X,Y),Z).

howManyEqual(X,X,X)-> 3;
howManyEqual(X,X,_)-> 2;
howManyEqual(_,X,X)-> 2;
howManyEqual(X,_,X)-> 2;
howManyEqual(_,_,_)-> 0.

test()->
  io:fwrite("~w~n",[howManyEqual(32,32,32)]),
  io:fwrite("~w~n",[howManyEqual(32,32,45)]),
  io:fwrite("~w~n",[howManyEqual(48,32,32)]),
  io:fwrite("~w~n",[howManyEqual(32,48,32)]),
  io:fwrite("~w~n",[howManyEqual(45,46,48)]).
