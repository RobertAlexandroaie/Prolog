om(vasile).
om(maria).
om(ion).
om(aurora).
om(gheorghe).
om(sabina).
om(radu).
om(vica).
om(marian).
om(adriana).
om(robert).
om(bogdan).
om(alexandra).
om(irina).
om(ovidiu).

parinte(vasile,gheorghe).
parinte(maria,gheorghe).
parinte(ion,sabina).
parinte(aurora,sabina).
parinte(vasile,adriana).
parinte(maria,adriana).
parinte(ion,radu).
parinte(aurora,radu).
parinte(gheorghe,robert).
parinte(sabina,robert).
parinte(gheroghe,george).
parinte(sabina,george).
parinte(radu,bogdan).
parinte(vica,bogdan).
parinte(radu,alexandra).
parinte(vica,alexandra).
parinte(marian,ovidiu).
parinte(adriana,ovidiu).
parinte(marian,irina).
parinte(adrana,irina).

femeie(maria).
femeie(aurora).
femeie(sabina).
femeie(vica).
femeie(adriana).
femeie(alexandra).
femeie(irina).

barbat(X):-om(X),not(femeie(X)).

mama(X,Y):-parinte(X,Y),femeie(X).
tata(X,Y):-parinte(X,Y),barbat(X).
bunic(X,Y):-parinte(X,Z),parinte(Z,Y),barbat(X).
bunica(X,Y):-parinte(X,Z),parinte(Z,Y),femeie(X).
frate(X,Y):-parinte(Z,Y),parinte(Z,X),barbat(X), X\=Y.
sora(X,Y):-parinte(Z,Y),parinte(Z,X),femeie(X), X\=Y.
unchi(X,Y):-parinte(Z,Y),frate(X,Z).
matusa(X,Y):-parinte(Z,Y),sora(X,Z).
nepot(X,Y):-bunic(Y,X),barbat(X).
nepot(X,Y):-bunica(Y,X),barbat(X).
nepot(X,Y):-unchi(Y,X),barbat(X).
nepot(X,Y):-matusa(Y,X),barbat(X).
nepota(X,Y):-bunic(Y,X),femeie(X).
nepota(X,Y):-bunica(Y,X),femeie(X).
nepota(X,Y):-unchi(Y,X),femeie(X).
nepota(X,Y):-matusa(Y,X),femeie(X).

stramos(X,Y):-parinte(X,Y).
stramos(X,Y):-parinte(X,Z),stramos(Z,Y).











