// Petite fonction permettant de verifier si le parametre 'nb' est une longueur logique
function estLg(nb) = (nb>0) ? true : false;

// Petite fonction permettant de verifier si le parametre 'nb' est une amplitude d'angle logique
function estAgl(nb) = (nb!=0) ? true : false;


// Adaptation de la formule de Pythagore (H²=A²+b²)
//
//      +
//      |\
//      | \ H
//    B |  \ Y
//      |   \ P
//      |    \
//      +-----+
//         A
// En fournissant deux des parametres, on obtient le troisieme
function pythagore(hyp, a, b) = (hyp==undef) ? ((estLg(a) && estLg(b)) ? sqrt(a*a+b*b) : undef) :
                                (a==undef) ? ((estLg(hyp) && estLg(b)) ? sqrt(hyp*hyp-b*b) : undef) :
                                (b==undef) ? ((estLg(hyp) && estLg(a)) ? sqrt(hyp*hyp-a*a) : undef) :
                                undef;

// Adaptation des formules de trigonometrie dans un triangle rectangle
//
//      +
//      | . H
//      |   . Y
//      |     . P
//   O  |       . O
//   P  |         . T
//   P  |           . H
//   O  |             . E
//   S  |               . N
//   E  |                 . U
//      |                   . S
//      |                     . E
//      +-----------------------+
//              ADJACENT
//
// En fournissant deux des trois parametres, on obtient l'amplitude de l'angle A
function triRectA(hyp,adj,opp) =    (hyp==undef) ? ((estLg(adj) && estLg(opp)) ? atan(opp/adj) : undef) :
                                    (adj==undef) ? ((estLg(hyp) && estLg(opp)) ? asin(opp/hyp) : undef) :
                                    (opp==undef) ? ((estLg(hyp) && estLg(adj)) ? acos(adj/hyp) : undef) :
                                    undef;

// En fournissant deux des trois parametres, on obtient la longueur du cote adjacent
function triRectAdj(A, hyp, opp) =  (opp==undef) ? ((estAgl(A) && estLg(hyp)) ? cos(A)*hyp : undef) :
                                    (hyp==undef) ? ((estAgl(A) && estLg(opp)) ? opp/tan(A) : undef) :
                                    (A==undef) ? ((estLg(hyp) && estLg(opp)) ? sqrt(hyp*hyp-opp*opp) : undef) :
                                    undef;

// En fournissant deux des trois parametres, on obtient la longueur du cote oppose
function triRectOpp(A, hyp, adj) =  (adj==undef) ? ((estAgl(A) && estLg(hyp)) ? sin(A)*hyp : undef) :
                                    (hyp==undef) ? ((estAgl(A) && estLg(adj)) ? tan(A)*adl : undef) :
                                    (A==undef) ? ((estLg(hyp) && estLg(adj)) ? sqrt(hyp*hyp-adj*adj) : undef) :
                                    undef;

// En fournissant deux des trois parametres, on obtient la longueur de l'hypothenuse
function triRectHyp(A, adj, opp) =  (adj==undef) ? ((estAgl(A) && estLg(opp)) ? opp/sin(A)) :
                                    (opp==undef) ? ((estAgl(A) && estLg(adj)) ? adj/cos(A)) :
                                    (A==undef) ? ((estLg(adj) && estLg(opp)) ? sqrt(a*a+b*b) : undef) :
                                    undef;                               
                                