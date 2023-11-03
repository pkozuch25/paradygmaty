osoba(jan, 25, sport).
osoba(anna, 30, czytanie).
osoba(marek, 35, podró¿e).
osoba(kasia, 28, kino).
osoba(patryk, 22, gotowanie).
osoba(piotr, 23, muzyka).
osoba(oliwia, 33, teatr).

starszy(X, Y) :- osoba(X, WiekX, _), osoba(Y, WiekY, _), WiekX > WiekY.
