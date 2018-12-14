instructor(chan    , math273).
instructor(patel   , ee222  ).
instructor(grossman, cs301  ).

enroll(kevin, math273).
enroll(juana, ee222  ).
enroll(juana, cs301  ).
enroll(kiko , math273).
enroll(kicko, cs301  ).

father(raymond, daniel).
father(raymond, johnny).
father(carrol, michael).
father(stupid, fucker).
father(carrol, kate).
father(jake, raymond).
father(jake, carrol).

teaches(P, S)
:-
    instructor(P, C),
    enroll(    S, C).

brother(X, Y)   %Defines what is required for X to be a brother of Y.
:-
    father(Z, X),   %Z must be the father of X.
    father(Z, Y),   %Z must be the father of Y.
    X \= Y      .   %X cannot be the same person as Y.

cousin(X, Y)   %Defines what is required for X to be a cousin of Y.
:-
    brother(A, B),   %A must be a brother of B.
    father( A, X),   %A must be the father of X.
    father( B, Y),   %B must be the father of Y.
    X \= Y       .   %X cannot be the same person as Y.

grandson(X, Y)   %Defines what is required for X to be a grandson of Y.
:-
    father(Y, A),   %Y must be the father of A.
    father(A, X).   %A must be the father of X.

descendent(X, Y)   %Defines what is required for X to be a descendent of Y.
:-
    father(  Y, X);   %Y can be the father of X.
    grandson(X, Y).   %X can be the grandson of Y.
    %Either of these are a satisfactory condition.
