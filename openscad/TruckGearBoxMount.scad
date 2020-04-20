$fn=36;

difference() {
    union(){
        // the upper part for attachement to the chassis
        difference(){
            cube([46, 23, 5]);
            // need to remove this bit so that it doesn't cover the holes for the motor
            translate([23, 23, -2]){
                cylinder(r=20, h=10);
            }
        }

        linear_extrude(height=5){
            import("TruckGearBoxPlate.dxf", center=true);
        }
    }
    
    
    // fixation holes
    for ( i = [1 : 4] ){
        translate([3, i * 5, -1]){
            cylinder(r=1.6, h=10);
        }
        translate([43, i * 5, -1]){
            cylinder(r=1.6, h=10);
        }
    }
    
    // countersink for motor screws
    translate([23, 7.5, -1]){
        cylinder(r=3, h=3);
    }
    translate([23, 23.2, -1]){
        cylinder(r=3, h=3);
    }
}

difference() {
    translate([5, 12.5, -20]){
        linear_extrude(height=20){
            import("TruckGearBoxContour.dxf");
        }
    }
    
    translate([23, 14.5, -7]){
        cylinder(r=5.5, h=10);
    }
}