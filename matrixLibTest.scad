use <matrixLib.scad>;

{ // 1. Test de isMatrix()
    a = [[1,1,1], 
         [1,1,1,1], 
         [1,1,1,1], 
         [1,1,1,1]];
    
    b = [[1,1,1,1], 
         [1,1,1,1], 
         [1,1,1,1], 
         [1,1,1]];
    
    c = [[1,1,1,1], 
         [1,1,1], 
         [1,1,1,1], 
         [1,1,1,1]];
    
    d = [[1,1,1], 
         [1,1,1], 
         [1,1,1,1], 
         [1,1,1,1]]; 
    
    e = [[1,1,1,1],
         [1,1,1,1],
         [1,1,1,1],
         [1,1,1,1],
         [1,1,1,1]];
         
    f = [[1,1,1],
         [1,1,1],
         [1,1,1]];
    
    g = [[1,1,1,1,1]];
    
    h = [[1],
         [1],
         [1],
         [1],
         [1]];
         
    echo (str("Test 1.1.a = ", isMatrix(a)==false));
    echo (str("Test 1.1.b = ", isMatrix(b)==false));
    echo (str("Test 1.1.c = ", isMatrix(c)==false));
    echo (str("Test 1.1.d = ", isMatrix(d)==false));
    echo (str("Test 1.1.e = ", isMatrix(e)==true));
    echo (str("Test 1.1.f = ", isMatrix(f)==true));
    echo (str("Test 1.1.g = ", isMatrix(g)==true));
    echo (str("Test 1.1.h = ", isMatrix(h)==true));
    echo ("");
    echo (str("Test 1.2.a = ", getMatrixSize(a)==undef));
    echo (str("Test 1.2.b = ", getMatrixSize(b)==undef));
    echo (str("Test 1.2.c = ", getMatrixSize(c)==undef));
    echo (str("Test 1.2.d = ", getMatrixSize(d)==undef));
    echo (str("Test 1.2.e = ", getMatrixSize(e)==[5,4]));
    echo (str("Test 1.2.f = ", getMatrixSize(f)==[3,3]));
    echo (str("Test 1.2.g = ", getMatrixSize(g)==[1,5]));
    echo (str("Test 1.2.h = ", getMatrixSize(h)==[5,1]));
    echo ("");
    echo (str("Test 1.3.a = ", isRowVector(a)==undef));
    echo (str("Test 1.3.b = ", isRowVector(b)==undef));
    echo (str("Test 1.3.c = ", isRowVector(c)==undef));
    echo (str("Test 1.3.d = ", isRowVector(d)==undef));
    echo (str("Test 1.3.e = ", isRowVector(e)==false));
    echo (str("Test 1.3.f = ", isRowVector(f)==false));
    echo (str("Test 1.3.g = ", isRowVector(g)==true));
    echo (str("Test 1.3.h = ", isRowVector(h)==false));
    echo ("");
    echo (str("Test 1.4.a = ", isColumnVector(a)==undef));
    echo (str("Test 1.4.b = ", isColumnVector(b)==undef));
    echo (str("Test 1.4.c = ", isColumnVector(c)==undef));
    echo (str("Test 1.4.d = ", isColumnVector(d)==undef));
    echo (str("Test 1.4.e = ", isColumnVector(e)==false));
    echo (str("Test 1.4.f = ", isColumnVector(f)==false));
    echo (str("Test 1.4.g = ", isColumnVector(g)==false));
    echo (str("Test 1.4.h = ", isColumnVector(h)==true));
    echo ("");
    echo (str("Test 1.4.a = ", isSquareMatrix(a)==undef));
    echo (str("Test 1.4.b = ", isSquareMatrix(b)==undef));
    echo (str("Test 1.4.c = ", isSquareMatrix(c)==undef));
    echo (str("Test 1.4.d = ", isSquareMatrix(d)==undef));
    echo (str("Test 1.4.e = ", isSquareMatrix(e)==false));
    echo (str("Test 1.4.f = ", isSquareMatrix(f)==true));
    echo (str("Test 1.4.g = ", isSquareMatrix(g)==false));
    echo (str("Test 1.4.h = ", isSquareMatrix(h)==false));
}