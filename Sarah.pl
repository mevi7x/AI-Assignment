male(father).
male(abdulllah).
female(mother).
female(sarah).
female(yara).
parent(father, sarah).
parent(father, abdulllah).
parent(father, yara).
parent(mother, sarah).
parent(mother, abdulllah).
parent(mother, yara).
father(X, Y) :- parent(X, Y), male(X).
mother(X, Y) :- parent(X, Y), female(X).
brother(X, Y) :- parent(Z, X), parent(Z, Y), male(X), X \= Y.
sister(X, Y) :- parent(Z, X), parent(Z, Y), female(X), X \= Y.
