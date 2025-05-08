case_x = 22;
case_y = 60;
case_z = 17;
thick = 2;
rayon=case_x/2-2;

difference() {
	cube([case_x+2*thick,case_y+2*thick,case_z+thick]);
	translate([thick,thick,thick]) {
		cube([case_x,case_y,case_z+10]);
	}
	
	translate([case_x/2+thick,2*thick,case_z+thick]) {
		rotate([90,0,0]) {
			cylinder(r=rayon,h=4*thick,$fn=50);
		}
	}
}

translate([thick,-2,0]) {
	difference() {
		cube([case_x,thick,case_z-rayon]);
		translate([thick,-thick,thick]) {
			cube([case_x-2*thick,2*thick,case_z-rayon]);
		}
		translate([thick/2,thick/2,thick/2]) {
			cube([case_x-thick,2*thick,case_z-rayon]);
		}
	}
}

