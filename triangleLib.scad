// Angle by Three Sides
function aBTS(opp, adj1, adj2) =  acos((adj1*adj1+adj2*adj2-opp*opp)/(2*adj1*adj2));

// Side by one angle and his two adjacent sides
function sBOATAS(angle, adj1, adj2) = ;

// Angle by one angle and his two adjacent sides
function aBOATAS(angle, adj1, adj2) = ;

function triangles_calculator(a,b,c,ab,bc,ca) 
    = let(
        case = (a==undef?0:100000)+(b==undef?0:10000)+(c==undef?0:1000)+(ab==undef?0:100)+(bc==undef?0:10)+(ca==undef?0:1)
    )   
        // Angle by three sides
        (case==111) ? [aBTS(bc,ab,ca),aBTS(ca,ab,bc),aBTS(ab,ca,bc),ab,bc,ca] : 
        
        // Angle + two adjacent sides
        (case==100101) ? [a,,,ab,,ca] : // A + AB + CA
        (case== 10110) ? [,b,,ab,bc,] : // B + AB + BC
        (case==  1011) ? [,,c,,bc,ca] : // C + BC + CA
        
        // Too much or too little arguments
        undef;
    
// 111 - [82.8192, 41.4096, 55.7711, 5, 6, 4]
echo (triangles_calculator(bc=6,ca=4,ab=5));

echo (triangles_calculator(bc=6,ca=6,ab=6));
