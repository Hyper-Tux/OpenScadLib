use <trigoLib.scad>

{ // 1. Test sur les fonctions TriRect
    adj = 4;
    opp = 3;
    hyp = 5;

    a = atan(opp/adj); // 36.87°
    b = atan(adj/opp); // 53.1°
    c = 90;

    // vu que la fonction round ne permet pas d'arrondir a X chiffres apres la virgule,
    // le resultat est multiplie par 100 pour au moins en tester 2.
    echo (str("Test 1.1.1 : ", round(triRectA(hyp=hyp, adj=adj)*100)==3687));
    echo (str("Test 1.1.2 : ", round(triRectA(hyp=hyp, opp=opp)*100)==3687));
    echo (str("Test 1.1.3 : ", round(triRectA(adj=adj, opp=opp)*100)==3687));

    echo (str("Test 1.2.1 : ", round(triRectAdj(A=a, hyp=hyp))==4));
    echo (str("Test 1.2.2 : ", round(triRectAdj(A=a, opp=opp))==4));
    echo (str("Test 1.2.3 : ", round(triRectAdj(hyp=hyp, opp=opp))==4));

    echo (str("Test 1.3.1 : ", round(triRectOpp(A=a, hyp=hyp))==3));
    echo (str("Test 1.3.2 : ", round(triRectOpp(A=a, adj=adj))==3));
    echo (str("Test 1.3.3 : ", round(triRectOpp(hyp=hyp, adj=adj))==3));

    echo (str("Test 1.4.1 : ", round(triRectHyp(A=a, opp=opp))==5));
    echo (str("Test 1.4.2 : ", round(triRectHyp(A=a, adj=adj))==5));
    echo (str("Test 1.4.3 : ", round(triRectHyp(adj=adj, opp=opp))==5));
}

{ // 2. Test sur la fonction distance
    pa = [0,0];
    pb = [3,4];

    echo (str("Test 2.1 : ", distance(pa, pb)==5));
}

{ // 3. Test sur la fonction triAire
    
}