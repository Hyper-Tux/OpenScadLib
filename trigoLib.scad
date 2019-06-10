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
//      |                     . E
//      C-----------------------A
//              ADJACENT
//
// En fournissant deux des trois parametres, on obtient l'amplitude de l'angle A
function triRectA(hyp,adj,opp) =    (hyp==undef && estLg(adj) && estLg(opp)) ? atan(opp/adj) :
                                    (adj==undef && estLg(hyp) && estLg(opp)) ? asin(opp/hyp) :
                                    (opp==undef && estLg(hyp) && estLg(adj)) ? acos(adj/hyp) :
                                    undef;

// En fournissant deux des trois parametres, on obtient la longueur du cote adjacent
function triRectAdj(A, hyp, opp) =  (opp==undef) ? ((estAgl(A) && estLg(hyp)) ? cos(A)*hyp : undef) :
                                    (hyp==undef) ? ((estAgl(A) && estLg(opp)) ? opp/tan(A) : undef) :
                                    (A==undef) ? ((estLg(hyp) && estLg(opp)) ? sqrt(hyp*hyp-opp*opp) : undef) :
                                    undef;

// En fournissant deux des trois parametres, on obtient la longueur du cote oppose
function triRectOpp(A, hyp, adj) =  (adj==undef) ? ((estAgl(A) && estLg(hyp)) ? sin(A)*hyp : undef) :
                                    (hyp==undef) ? ((estAgl(A) && estLg(adj)) ? tan(A)*adj : undef) :
                                    (A==undef) ? ((estLg(hyp) && estLg(adj)) ? sqrt(hyp*hyp-adj*adj) : undef) :
                                    undef;

// En fournissant deux des trois parametres, on obtient la longueur de l'hypothenuse
function triRectHyp(A, adj, opp) =  (adj==undef) ? ((estAgl(A) && estLg(opp)) ? opp/sin(A) : undef) :
                                    (opp==undef) ? ((estAgl(A) && estLg(adj)) ? adj/cos(A) : undef) :
                                    (A==undef) ? ((estLg(adj) && estLg(opp)) ? sqrt(adj*adj+opp*opp) : undef) :
 
                                   undef;                               

adj = 4;
opp = 3;
hyp = 5;

a = atan(opp/adj); // 36.8°
b = atan(adj/opp); // 53.1°
c = 90;

echo ("A = triRectA[hyp,adj] = ", triRectA(hyp=hyp, adj=adj));
echo ("A = triRectA[hyp,opp] = ", triRectA(hyp=hyp, opp=opp));
echo ("A = triRectA[adj,opp] = ", triRectA(adj=adj, opp=opp));

echo ("Adj = triRectAdj[a, hyp] = ", triRectAdj(A=a, hyp=hyp));
echo ("Adj = triRectAdj[a, opp] = ", triRectAdj(A=a, opp=opp));
echo ("Adj = triRectAdj[hyp, opp] = ", triRectAdj(hyp=hyp, opp=opp));

echo ("Opp = triRectOpp[a, hyp] = ", triRectOpp(A=a, hyp=hyp));
echo ("Opp = triRectOpp[a, adj] = ", triRectOpp(A=a, adj=adj));
echo ("Opp = triRectOpp[hyp, adj] = ", triRectOpp(hyp=hyp, adj=adj));

echo ("Hyp = triRectHyp[a, opp] = ", triRectHyp(A=a, opp=opp));
echo ("Hyp = triRectHyp[a, adj] = ", triRectHyp(A=a, adj=adj));
echo ("Hyp = triRectHyp[adj, opp] = ", triRectHyp(adj=adj, opp=opp));

// Returne le distance entre les points A et B, en 2D ou en 3D
function distance(a, b) = (a[2]==undef || b[2]==undef) ? sqrt((b[0]-a[0])*(b[0]-a[0])+(b[1]-a[1])*(b[1]-a[1])) :
                             sqrt((b[0]-a[0])*(b[0]-a[0])+(b[1]-a[1])*(b[1]-a[1])+(b[2]-a[2])*(b[2]-a[2]));

pa = [0,0];
pb = [3,4];

translate([pa[0], pa[1], 0])
cube(0.1, center=true);

translate([pb[0], pb[1], 0])
cube(0.1, center=true);

echo ("Distance entre A et B : ", distance(pa, pb));