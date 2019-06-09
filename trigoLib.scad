// Adaptation de la formule de Pythagore (H²=A²+B²)
// --------------------------------------------------
//
//      +
//      |\
//      | \
//      |  \ h
//    B |   \ y
//      |    \ p
//      |     \
//      |      \
//      +-------+
//          A
//
// En fournissant deux des trois parametres, on obtient le troisieme
function pythagore(hyp=0, a=0, b=0) =   (hyp==0) ? ((a==0 || b==0) ? -1 : sqrt(a*a+b*b)) :
                                        (a==0) ? ((hyp==0 || b==0) ? -2 : sqrt(hyp*hyp-b*b)) :
                                        (b==0) ? ((hyp==0 || a==0) ? -3 : sqrt(hyp*hyp-a*a)) :
                                        -4;

// Adaptation des formules de trigonometrie dans un triangle rectangle
// ---------------------------------------------------------------------
//
//      +
//      | .  H
//      |   .  y
//      |     .  P
//   O  |       .  O
//   P  |         .  T
//   P  |           .  H
//   o  |             .  E
//   S  |               .  N
//   E  |                 .  U
//      |                   .  S
//      |                     .  E
//      +-----------------------+
//             ADJACENT
//
// En fournissant deux des trois parametres, on obtient l'amplitude de l'angle A
function triRectA(hyp=0, adj=0, opp=0) =(hyp==0) ? ((adj==0 || opp==0) ? -1 : atan(opp/adj)) :
                                        (adj==0) ? ((hyp==0 || opp==0) ? -2 : asin(opp/hyp)) :
                                        (opp==0) ? ((hyp==0 || adj==0) ? -3 : acos(adj/hyp)) :
                                        -4;

// En fournissant soit l'amplitude de l'angle A et la longueur de l'hypothenuse 
// soit l'amplitude de l'angle A et la longueur du cote oppose, on obtient la longueur du cote adjacent
function triRectAdj(A=0, hyp=0, opp=0) =(opp==0) ? ((A==0 || hyp==0) ? -1 : cos(A)*hyp) :
                                        (hyp==0) ? ((A==0 || opp==0) ? -2 : opp/tan(A)) :
                                        -3;
                                        
// En fournissant soit l'amplitude de l'angle A et la longueur de l'hypothenuse 
// soit l'amplitude de l'angle A et la longueur du cote adjacent, on obtient la longueur du cote oppose
function triRectOpp(A=0, hyp=0, adj=0) =(adj==0) ? ((A==0 || hyp==0) ? -1 : sin(A)*hyp) :
                                        (hyp==0) ? ((A==0 || adj==0) ? -2 : tan(A)*adj) :
                                        -3;

// En fournissant soit l'amplitude de l'angle A et la longueur du cote adjacent 
// soit l'amplitude de l'angle A et la longueur du cote oppose, on obtient la longueur de l'hypothenuse.
function triRectHyp(A=0, adj=0, opp=0) =(adj==0) ? ((A==0 || opp==0) ? -1 : opp/sin(A)) :
                                        (opp==0) ? ((A==0 || adj==0) ? -2 : adj/cos(A)) :
                                        -3;


echo (pythagore(5, 0, 4));