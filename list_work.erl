%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Aug 2017 4:14 PM
%%%-------------------------------------------------------------------
-module(list_work).
-author("Biswarup _Ghosh").

%% API
-export([product_of_a_list/1,prod_tail/1,max_list/1,max_list_tail/1,double/1,even/1]).

product_of_a_list([])->
  1;

product_of_a_list([X|Xs])-> X * product_of_a_list(Xs).

prod_tail(Xs)-> prod_tail(Xs,1).
prod_tail([],S)-> S;
prod_tail([X|Xs],S)->prod_tail(Xs,S*X).


max_list([X])->
  X;
max_list([X|[Z|Xs]])->
  max_list([max(X,Z)|Xs]).

max_list_tail([])->
  "Undef";
max_list_tail([X])->
  X;
max_list_tail([X|Xs])->max_list_tail([X|Xs],X).
max_list_tail([],S)->S;
max_list_tail([X|Xs],S)-> max_list_tail(Xs,max(X,S)).

double([])->
  [] ;
double([X|Xs])->
   M= X*2,
  [M |double(Xs)].

even([])->
  [];
even([X|Xs]) when X rem 2 ==0 ->
  [X|even(Xs)];
even([X|Xs]) when X rem 2 =/=0 ->
  even(Xs).

