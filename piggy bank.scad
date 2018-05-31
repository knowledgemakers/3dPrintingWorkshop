// a simple piggy bank !
// made under 90 minutes

// by
// Thiviyan Thanapalasingam, Martino Mensio, Lucas Anastasiou


$fn=128;
difference(){
    difference(){
        
        difference(){
        scale([2,1.4,1.4])
        sphere(25);

        scale([2,1.4,1.4])
        sphere(20);
        }
        translate([-15,-5,0])
        cube([30,10,50]);
    }

    translate([0,0,-40])
    cylinder(h=20,r1=16,r2=16);
}
translate([35,15,-40])
cylinder(h=30,r1=10,r2=10);

translate([35,-15,-40])
cylinder(h=30,r1=10,r2=10);

translate([-35,15,-40])
cylinder(h=30,r1=10,r2=10);

translate([-35,-15,-40])
cylinder(h=30,r1=10,r2=10);

//rotate([0,90,0])
//translate([-15,0,40])
//sphere(20);


module head(){
translate([10,0,20])
    union() {
        // ears
        translate([0,0,-4])
        union() {
            translate([0,10,0])
                rotate([0,0,-10])
                    difference() {
                        sphere(r=7);
                        translate([7,0,0])
                            sphere(r=10);
                    }
               
            translate([0,-10,0])
                rotate([0,0,10])
                    difference() {
                        sphere(r=7);
                        translate([7,0,0])
                            sphere(r=10);
                    }
            }
        // nose
        translate([7,0,-20])
            rotate([90,0,90])
                difference() {
                    cylinder(5, r1=7,r2=6);
                    
                    union() {
                        translate([-3,0,-3])
                            rotate(0,0,0)
                                cylinder(10, r1=1.5,r2=1.5);
                        translate([3,0,-3])
                            rotate(0,0,0)
                                cylinder(10, r1=1,r2=1.5);
                    }
                }
        // eyes
        translate([5,0,-10])
            union() {
                translate([0,6,0])
                    sphere(r=3);
                translate([0,-6,0])
                    sphere(r=3);
            }
    }
 // head
sphere(r=20);
}

translate([40,0,28])
head();

// piggy tail

module add_tail() {

    linear_extrude(height = 30,  scale=[1,0], center = false, twist = -920, $fn = 100)

    translate([2, 0, 0])

    circle(r = 2);

}


translate([-47,0,3])
rotate([0,-45,0])
add_tail();