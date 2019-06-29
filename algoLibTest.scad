use <algoLib.scad>;

{ // 1. Test of isArray()
    test1 = [0];
    test2 = 0;
    test3 = [[0]];
    test4 = [0,0];
    test5 = "Test";

    echo(str("Test 1.1 = ", isArray(test1)==true));
    echo(str("Test 1.2 = ", isArray(test2)==false));
    echo(str("Test 1.3 = ", isArray(test3)==true));
    echo(str("Test 1.4 = ", isArray(test4)==true));
    echo(str("Test 1.5 = ", isArray(test5)==true));
}

{ // 2. Test of sumv
    array1 = [0,1,2,3,4,5];
    
    echo(str("Test 2.1 = ", sumv(array1,5,0)==15));
    echo(str("Test 2.2 = ", sumv(array1,2,0)==3));
    echo(str("Test 2.3 = ", sumv(array1,3)==6));
    echo(str("Test 2.4 = ", sumv(array1,5,3)==12));
    echo(str("Test 2.5 = ", sumv(array1,4,1)==10));
}

{ // 3. Test of lenWZ
    array2 = [0,1,0,3,0,5,0,7,0,9];
    
    echo(str("Test 3.1 = ", lenWZ(array2,9,0)==5));
    echo(str("Test 3.2 = ", lenWZ(array2,4,0)==2));
    echo(str("Test 3.3 = ", lenWZ(array2,3)==2));
    echo(str("Test 3.4 = ", lenWZ(array2,9,3)==4));
    echo(str("Test 3.5 = ", lenWZ(array2,8,2)==3));
}