$fn=36;

difference(){
    union(){
        cube([60, 8.5, 4]);
        translate([20.5, 0, 4]){
            cube([5, 8.5, 7]);
        }

        translate([30.5, 0, 4]){
            cube([5, 8.5, 7]);
        }
    }
    
    // fixation holes
    //c hassis
    translate([9.5, 4.25, -1]){
        cylinder(r=1, h=10);
    }
    translate([50.5, 4.25, -1]){
        cylinder(r=1, h=10);
    }

    
    // motor
    rotate([0, 90, 0]){
        translate([-7, 4.25, 0]){
            cylinder(r=1.6, h=100);
        }
    }
}