function isArray(a) = a[0]!=undef;

// recursion - find the sum of the values in a vector (array) by calling itself
// from the start (or s'th element) to the i'th element - remember elements are zero based
function sumv(v,i,s=0) = (i<0 ? 0 :(i==s ? v[i] : v[i] + sumv(v,i-1,s)));

// recursion - find the count of the values different of zero in a vector (array) from start (s) to the i'th element.
function lenWZ(v,i,s=0) =   (i<0 || s<0 || s>i) 
                            ? 0 
                            : (
                                ((v[i]==0) 
                                ? 0 
                                : 1)
                                + 
                                ((i==s) 
                                ? 0 
                                : lenWZ(v,i-1,s))
                            );

// Generate a random color from rgba spectrum. Possibility of imposing one or more values                       
function randsColor(r, g, b, a, rMin=1, rMax=255, gMin=1, gMax=255, bMin=1, bMax=255, aMin=1, aMax=255) =    let (
                                    red = (r==undef) ? rands(rMin,rMax,1)[0] : r,
                                    green = (g==undef) ? rands(gMin,gMax,1)[0] : g,
                                    blue = (b==undef) ? rands(bMin,bMax,1)[0] : b,
                                    alpha = (a==undef) ? rands(aMin,aMax,1)[0] : a
                                 ) [red/255, green/255, blue/255, alpha/255];