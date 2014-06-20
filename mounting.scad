module position_corner_mounts(length, width, clearance) {
	for(x = [ clearance, length - clearance ]) {
		for(y = [ clearance, width - clearance ]) {
			translate([x, y, 0]) child();
		}
	}
}

// Deprecated
module place_corner_mounts(length, width, clearance) {
	position_corner_mounts(length, width, clearance) child();
}