%%%-------------------------------------------------------------------
%%% @author Biswarup _Ghosh
%%% @copyright (C) 2017, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 23. Aug 2017 11:14 PM
%%%-------------------------------------------------------------------
-module(median).
-author("Biswarup _Ghosh").

%% API
-export([merge/4,split/1,merge_sort/1,find_element/2,median/1]).
%% need split ,merge to get merge sort , then need length to get median
%%split/1 takes a list and divides it by two

split(Xs)->split([],Xs,(1+length(Xs)) div 2).
split(L,Xs,0)-> {L,Xs};
split(L,[X|Xs],P)->split(L++[X],Xs,P-1).

merge(S,[],R,_Fn)-> S++R;
merge(S,L,[],_Fn)->S++L;
%%merge(S,[L|Ls]=Left,[R|Rs]=Right)->merge(S,[L|Ls]=Left,[R|Rs]=Right,fun(X,Y) -> X=<Y end).
merge(S,[L|Ls]=Left,[R|Rs]=Right,Fn)->
  case Fn(L,R) of
    true ->merge(S++[L],Ls,Right,Fn);
    _    -> merge(S++[R],Left,Rs,Fn)
  end.

merge_sort(S)-> merge_sort(S,fun(X,Y)-> X=<Y end).
merge_sort([_X,_Y|_Xs]=S,Fn)->
  {L,R}= split(S),
  merge([],merge_sort(L,Fn),merge_sort(R,Fn),Fn);
merge_sort(Xs, _Fn) -> Xs.
find_element([X|_Xs],0) ->X;
find_element([_X|Xs]=S,N) when N < length(S)-> find_element(Xs,N-1).




median(S)->
  Sorted = merge_sort(S),

  Length = length(S),
  Middle = find_element(Sorted,((Length div 2))),
  case (Length rem 2) of
    0 -> (find_element(Sorted,((Length div 2)-1))+Middle) / 2;
    _ -> Middle
  end.






