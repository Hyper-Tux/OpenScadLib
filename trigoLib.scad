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
function pythagore(hyp, a, b) = (hyp==undef && estLg(a) && estLg(b)) 
                                ?   sqrt(a*a+b*b) 
                                :   (a==undef && estLg(hyp) && estLg(b)) 
                                    ?   sqrt(hyp*hyp-b*b) 
                                    :   (b==undef && estLg(hyp) && estLg(a)) 
                                            ?   sqrt(hyp*hyp-a*a) 
                                            : undef;

// Adaptation des formules de trigonometrie dans un triangle rectangle
//
//      B                               Pour les tests, on utilisera le triangle particulier 3-4-5
//      | . H                           
//      |   . Y                         A° = 36.87°, B = 53.13°, C = 90° 
//      |     . P                       |AC| = 4, |BC| = 3, |AB| = 5
//   O  |       . O
//   P  |         . T
//   P  |           . H
//   O  |             . E
//   S  |               . N
//   E  |                 . U
//      |                   . S
//      |                      . E
//      C-----------------------A
//              ADJACENT
//
// En fournissant deux des trois parametres, on obtient l'amplitude de l'angle A
function triRectA(hyp,adj,opp) =    (hyp==undef && estLg(adj) && estLg(opp)) 
                                    ?   atan(opp/adj) 
                                    :   (adj==undef && estLg(hyp) && estLg(opp)) 
                                        ?   asin(opp/hyp) 
                                        :   (opp==undef && estLg(hyp) && estLg(adj)) 
                                            ?   acos(adj/hyp) 
                                            :   undef;

// En fournissant deux des trois parametres, on obtient la longueur du cote adjacent
function triRectAdj(A, hyp, opp) =  (opp==undef && estAgl(A) && estLg(hyp))
                                    ?   cos(A)*hyp 
                                    :   (hyp==undef && estAgl(A) && estLg(opp))
                                        ?   opp/tan(A) 
                                        :   (A==undef && estLg(hyp) && estLg(opp)) 
                                            ?   sqrt(hyp*hyp-opp*opp) 
                                            :   undef;

// En fournissant deux des trois parametres, on obtient la longueur du cote oppose
function triRectOpp(A, hyp, adj) =  (adj==undef && estAgl(A) && estLg(hyp)) 
                                    ?   sin(A)*hyp 
                                    :   (hyp==undef && estAgl(A) && estLg(adj)) 
                                        ?   tan(A)*adj 
                                        :   (A==undef && estLg(hyp) && estLg(adj)) 
                                            ?   sqrt(hyp*hyp-adj*adj) 
                                            :   undef;

// En fournissant deux des trois parametres, on obtient la longueur de l'hypothenuse
function triRectHyp(A, adj, opp) =  (adj==undef && estAgl(A) && estLg(opp)) 
                                    ?   opp/sin(A) 
                                    :   (opp==undef && estAgl(A) && estLg(adj))
                                        ?   adj/cos(A) 
                                        :   (A==undef && estLg(adj) && estLg(opp)) 
                                            ?   sqrt(adj*adj+opp*opp) 
                                            :   undef;                               

// Returne le distance entre les points A et B, en 2D ou en 3D
function distance(a, b) =   (a[2]==undef || b[2]==undef) 
                            ?   sqrt(pow(b[0]-a[0],2)+pow(b[1]-a[1],2))
                            :   sqrt(pow(b[0]-a[0],2)+pow(b[1]-a[1],2)+pow(b[2]-a[2],2));

// Premier jet du calcul de l'aire d'un triangle en 2D
function triAire(a, b, c) = let 
                            (
                                ab = sqrt(pow(b[0]-a[0],2)+pow(b[1]-a[1],2)),
                                bc = sqrt(pow(c[0]-b[0],2)+pow(c[1]-b[1],2)),
                                ca = sqrt(pow(a[0]-c[0],2)+pow(a[1]-c[1],2)),
                                p = (ab+bc+ca)/2,
                                aire = sqrt(p*(p-ab)*(p-bc)*(p-ca))
                            ) aire;