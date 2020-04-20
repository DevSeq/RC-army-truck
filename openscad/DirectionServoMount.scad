$fn=18;

cube([33.5, 28, 2.7]);
translate([-13.5, -8, 0]) {
    cube([13.5, 36, 2.7]);
}


translate([-6.5, 19, 2.7]) {
    difference() {
        cube([5, 7, 12]);
        translate([2.5, 3.5, 7]){
            cylinder(h= 10, r=1);
        }
        translate([-1, 2.5, 5.75]){
            rotate([0, 90, 0]){
                cylinder(h= 10, r=1);
            }
        }
    }
}

translate([-6.5, -8, 2.7]) {
    difference(){
        cube([5, 4.5, 12]);
        translate([2.5, 2.25, 7]){
            cylinder(h= 10, r=1);
        }
        translate([-1, 2, 5.75]){
            rotate([0, 90, 0]){
                cylinder(h= 10, r=1);
            }
        }
    }
}
