module place_corner_mounts(length, width, clearance) {
	for(x = [ clearance, length - clearance ]) {
		for(y = [ clearance, width - clearance ]) {
			translate([x, y, 0]) child();
		}
	}
}