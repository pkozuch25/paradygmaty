osoba(jan, adam, ewa, mezczyzna, 35).
osoba(anna, adam, ewa, kobieta, 32).
osoba(marek, jan, zofia, mezczyzna, 10).
osoba(kasia, jan, zofia, kobieta, 8).
osoba(piotr, marek, marta, mezczyzna, 3).
osoba(zofia, adam, ewa, kobieta, 60).
osoba(michal, adam, zofia, mezczyzna, 38).
osoba(marta, michal, ela, kobieta, 28).

rodzenstwo(X, Y) :- osoba(X, Ojciec, Matka, _, _), osoba(Y, Ojciec, Matka, _, _), X \= Y.
bracia(X, Y) :- rodzenstwo(X, Y), osoba(X, _, _, mezczyzna, _).
siostry(X, Y) :- rodzenstwo(X, Y), osoba(X, _, _, kobieta, _).
brat(X, Y) :- bracia(X, Y), osoba(X, _, _, mezczyzna, _).
siostra(X, Y) :- siostry(X, Y), osoba(X, _, _, kobieta, _).
