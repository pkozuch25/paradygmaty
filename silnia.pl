silnia(0,1).
silnia(N,R):-
    N>0,
    NewN is N - 1,
    silnia(NewN, R1),
    R is N * R1.
fib(0,0).
fib(1,1).
fib(N,R):-
    N > 1,
    N1 is N - 1,
    N2 is N - 2,
    fib(N1,R1),
    fib(N2,R2),
    R is R1 + R2,
    write(R).

zadanie:-
    write('Podaj a: '), read(A), nl,
    write('Podaj b: '), read(B),
    (B >= 0 -> potega(A,B,R), write(R)
    ;
    write('bledne dane')).
potega(_,0,1).
potega(A,B,R):-
    B > 0,
    B1 is B - 1,
    potega(A,B1,R1),
    R is A * R1.
hanoi(1, A, B, _):-
    write('Przenies krazek z wiezy '), write(A),
    write('Na wieze '), write(B), nl.
hanoi(N,A,B,C):-
    N > 1,
    NewN is  N - 1,
    hanoi(NewN, A,C,B),
    hanoi(1,A,B,_),
    hanoi(NewN,C,B,A).
