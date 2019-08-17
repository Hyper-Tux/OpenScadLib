module moveCraft(vec)
{
    translate([round(vec[0]), round(vec[1]), round(vec[2])]) children();
}

module cubeCraft()
{
    cube(0.9, center=true);
}

module cuboideCraft(size, void=false)
{
    maxX = round(size[0])-1;
    maxY = round(size[1])-1;
    maxZ = round(size[2])-1;
    
    for (vX=[0:1:maxX], vY=[0:1:maxY], vZ=[0:1:maxZ])
        if (!void || (((vX==0)?1:0)+((vY==0)?1:0)+((vZ==0)?1:0)+((vX==maxX)?1:0)+((vY==maxY)?1:0)+((vZ==maxZ)?1:0))>=2)
            translate([vX,vY,vZ])
            cubeCraft();
}

module circleCraft(d)
{
    for (vX=[-d/2:1:d/2], vY=[-d/2:1:d/2])
        if (vX*vX+vY*vY<=(d/2)*(d/2))
            translate([vX,vY,0])
            cubeCraft();
}

module cylinderCraft(d, h)
{
    for (vH=[0:1:h-1])
        translate([0,0,vH])
        circleCraft(d);
}
//cuboideCraft([3,4,5]);
//
//color("red")
//moveCraft([3,0,0])
//cuboideCraft([3,4,5]);
//
//color("yellow")
//moveCraft([6,0,0])
//cuboideCraft([6,4,5], true);
d=20;
color("red")
cylinderCraft(d, 20);

translate([0,0,-0.5])
cylinder(d=d, h=0.1, $fn=50);
