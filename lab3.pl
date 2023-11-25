pisz([]).
pisz([H|T]):-
    write(H),
    write(' '),
    pisz(T).
nalezy(E,[E|_]).
nalezy(E,[_|T]):-
    nalezy(E,T).
dlugosc([],0).
dlugosc([_|H], Dlugosc):-
    dlugosc(H,X),
    Dlugosc is X + 1.
polacz([],L2,L2).
polacz([H|Y],Lista2, [H|B]):-
    polacz(Y,Lista2,B).

dodaj(X,Lista, NowaLista):-
    NowaLista = [X,Lista].
dodaj1(X,Lista, [x|Lista]).

usun(_,[],[]).

run:-
    [X|Y] = [1,2,3,4],
    write('zadanie 1'),nl, pisz([X|Y]),nl,
    write('zadanie 2'),nl, write('dlugosc listy '), dlugosc([X|Y],D),
    write(D).
