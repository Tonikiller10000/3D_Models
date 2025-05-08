case_x = 27;
case_y = 20;
case_z = 64;

thick = 1.6;


module case(top=false,bottom=false) {
	difference() {
		cube([case_x+2*thick,case_y+2*thick,case_z+thick]);
		translate([thick,thick,thick]) {
			cube([case_x,case_y,case_z+10]);
		}
		translate([thick,case_y/2,-thick]) {
			cube([case_x,case_y/2+thick,10]);
		}
		if(!bottom) {
			translate([thick+5,-thick,thick+5]) {
				cube([case_x-10,5*thick,case_z]);
			}
		}
		if(!top) {
			translate([thick+5,case_y,thick+5]) {
				cube([case_x-10,5*thick,case_z]);
			}
		}
	}
}

case(bottom=true);
translate([0,case_y+thick,0]) {
	case();	
}
translate([0,2*(case_y+thick),0]) {
	case();	
}
translate([0,3*(case_y+thick),0]) {
	case();	
}
translate([0,4*(case_y+thick),0]) {
	case(top=true);	
}