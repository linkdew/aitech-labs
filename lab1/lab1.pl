male(jack).
male(bob).
male(sam).
male(koichi).

female(helen).
female(sally).
female(kate).
female(mary).

parent(jack, helen).
parent(jack, bob).
parent(sally, helen).
parent(sally, bob).
parent(kate, mary).
parent(mary, koichi).
parent(mary, sam).

/* rules */
father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
child(X, Y)  :- parent(Y, X).

son(X, Y) :- male(X), parent(Y, X).
daughter(X, Y) :- female(X), parent(Y, X).
