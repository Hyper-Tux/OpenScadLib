// Generate a random color from rgba spectrum. Possibility of imposing one or more values                       
function randsColor(r, g, b, a, rMin=1, rMax=255, gMin=1, gMax=255, bMin=1, bMax=255, aMin=1, aMax=255) =    let (
                                    red = (r==undef) ? rands(rMin,rMax,1)[0] : r,
                                    green = (g==undef) ? rands(gMin,gMax,1)[0] : g,
                                    blue = (b==undef) ? rands(bMin,bMax,1)[0] : b,
                                    alpha = (a==undef) ? rands(aMin,aMax,1)[0] : a
                                 ) [red/255, green/255, blue/255, alpha/255];

module gradient(colA, colB)
{
    echo (str("nb child : ", $children));

    stepR = (colB[0]-colA[0])/$children;
    stepG = (colB[1]-colA[1])/$children;
    stepB = (colB[2]-colA[2])/$children;
    stepA = (colB[3]-colA[3])/$children;
    
    for (i=[0:$children-1])
        color([colA[0]+stepR*i, colA[1]+stepG*i, colA[2]+stepB*i, colA[3]+stepA*i]) children(i);
}


gradient([0.5,0,0,1.0], [1,0,0,1.0])
{
//    for (i=[0:1:10])
//    {
//        echo("----");
//        translate([i,0,0])
//        cube(1);
//    }
    
    translate([0,0,0]) cube(1);
    translate([1,0,0]) cube(1);
    translate([2,0,0]) cube(1);
    translate([3,0,0]) cube(1);
    translate([4,0,0]) cube(1);
}