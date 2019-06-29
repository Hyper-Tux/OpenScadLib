// Exemple de matrices :
//
// [[1,1,1,1],    [[1,0,1],   [[1,1,1,1,1])  [[1],
//  [1,1,1,1],     [0,3,0],                   [1],
//  [1,1,1,1],     [1,0,1]]                   [1],
//  [1,1,1,1],                                [1],
//  [1,1,1,1]]                                [1]]
// 
//  Matrix [5x4] Matrix [3x3]  Matrix [1x5]  Matrix [5x1]


// fonction qui vérifie qu'un tableau est bien une matrice
// NB : Une matrice de dimension (ou d’ordre or de taille) n×p
// est un tableau de nombres réels (appelés coefficients ou termes)
// comportant n lignes et p colonnes.
function isMatrix(matrix, i=1) =    (len(matrix)==1)
                                    ?   true
                                    :   (len(matrix[i-1])==len(matrix[i]))
                                        ?   (len(matrix)>i+1) 
                                            ?   isMatrix(matrix,i+1)
                                            :   true
                                        :   false;
                                    
function getMatrixSize(matrix) =    (isMatrix(matrix))
                                    ?   [len(matrix), len(matrix[0])]
                                    :   undef;

function isRowVector(matrix) =      let (
                                        size = getMatrixSize(matrix),
                                        is = (size==undef) ? undef : (size[0]==1)
                                    ) is;

function isColumnVector(matrix) =   let (
                                        size = getMatrixSize(matrix),
                                        is = (size==undef) ? undef : (size[1]==1)
                                    ) is;
                                    
function isSquareMatrix(matrix) =   let (
                                        size = getMatrixSize(matrix),
                                        is = (size==undef) ? undef : (size[0]==size[1])
                                    ) is;
