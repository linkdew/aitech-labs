male(alan).
male(charles).
male(bob).
male(ivan).

female(beverly).
female(fay).
female(merilyn).
female(sally).

mother(merilyn,beverly).
mother(alan,sally).

father(alan,bob).
father(beverly,charles).
father(fay,bob).
father(merilyn,alan).

parent(X,Y) :- mother(X,Y).
parent(X,Y) :- father(X,Y).
brother(X,Y) :-
male(Y) ,
parent(X,P) ,
parent(Y,P) ,
X \= Y.
