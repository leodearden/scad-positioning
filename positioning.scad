module position_rectange(length, width, clearance = 0) {
	for(x = [ clearance, length - clearance ]) {
		for(y = [ clearance, width - clearance ]) {
			translate([x, y, 0]) child();
		}
	}
}

module position_circle(r, n, offset = 0) {
	for( i = [0 : n - 1] ) {
		rotate([0, 0, i*360/n + offset]) {
			translate([r, 0, 0]) child();
		}
	}
}