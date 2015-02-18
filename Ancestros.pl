hombre(X).
mujer(X).

padre(X,Y).
madre(X,Y).


madre(julia,manuel).
padre(pepe,manuel).

padre(luis,martha).
padre(luis,julia).

madre(maria,martha).
madre(maria,julia).

padre(jose,pepe).
padre(jose,carlos).

madre(flor,pepe).
madre(flor,carlos).

madre(julia,manuel).
padre(pepe,manuel).

hermano(X,Y):- padre(Z,X),padre(Z,Y),hombre(X).
hermano(X,Y):- madre(Z,X),madre(Z,Y),hombre(X).

hermana(X,Y):- padre(Z,X),padre(Z,Y),mujer(X).
hermana(X,Y):- padre(Z,X),madre(Z,Y),mujer(X).

abuelo(X,Y):- padre(X,Z),padre(Z,Y).
abuelo(X,Y):- padre(X,Z),madre(Z,Y).

abuela(X,Y):- madre(X,Z),padre(Z,Y).
abuela(X,Y):- madre(X,Z),madre(Z,Y).

tio(X,Y):- hermano(X,Z),padre(Z,Y).
tio(X,Y):- hermano(X,Z),madre(Z,Y).

tia(X,Y):- hermana(X,Z),padre(Z,Y).
tia(X,Y):- hermana(X,Z),madre(Z,Y).
 
