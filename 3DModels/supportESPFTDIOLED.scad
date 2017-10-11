$fn=30;
wBox=55;
lBox=80;
3dBD=0.4; //diametre de la buse de l'imprimante 3D
lIntB=10*3dBD; //largeur bord interieur
lExtB=10*3dBD; //largeur bord exterieur
hContour=0;
module pleine() {
color("blue")difference(){
color("orange") linear_extrude(3.2) offset(r=lExtB)  square([wBox,lBox],center=false);
translate([0,0,1.6]) color("red") linear_extrude(3.2) square([wBox,lBox],center=false);
}
}
difference(){
  pleine();  
  color("pink")translate([0,0,-4]) linear_extrude(8) offset(r=-lIntB) square([wBox,lBox], center=false);
}