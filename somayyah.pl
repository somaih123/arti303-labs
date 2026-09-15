male(mohammed).
male(omar).
female(somaih).
female(norah).
female(reem).
female(lama).
female(mona).
female(bushra).
female(sara).

parent(mohammed, somaih).
parent(mohammed, norah).
parent(mohammed, omar).
parent(somaih, reem).
parent(reem, lama).
parent(norah, mona).
parent(norah, bushra).
parent(norah, sara).

father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.
