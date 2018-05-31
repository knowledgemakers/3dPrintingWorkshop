$fn=128;
//////
cylinder(h=5, r1=15, r2=13);
//////
cylinder(h=40, r1=8, r2=5);
//////
translate([0,0,45])
//////
difference() {
  union() {
    sphere(10);
   translate([0, 0, 10 * sin(20)])
     cylinder(h = 20, r1 = 10 * cos(20), r2 = 0); 
  }
//////
  rotate([45, 0, 0])
  translate([-20, 0, 0])
    cube([40, 3, 40]);
}
//////
//////
translate([0, 0, 67])
     sphere(r = 2.5);
////
//
//
//
//






//////
//module collar(){
//translate([0, 0, 25])
//    intersection() {
//      cylinder(h = 10, r1 = 15, r2 = 0);
//      translate([0, 0, 7])
//        mirror([0, 0, 1])
//          cylinder(h = 10, r1 = 15, r2 = 0);
//    }
//}
////////
//collar();





