// Raffle Ticket Haboob baffle layout / drill template v1.4
// Solid 82 mm footprint disk + underside locating lip.
// Workflow:
// 1) Print three copies and arrange all three on lid to establish spacing.
// 2) Use center guide holes to mark 2-1/8 in vent-hole centers.
// 3) Cut vent holes.
// 4) Reinsert template using underside lip to key concentrically in each vent hole.
// 5) Mark/drill three M2.5 mounting holes.

$fn=180;

template_od = 82.0;
plate_th = 3.0;

// Existing lid vent hole: 2-1/8 in = 53.975 mm.
// 0.50 mm diametral clearance gives an easy slip fit while remaining well-centered.
vent_hole_d = 53.975;
locating_lip_d = 53.475;
locating_lip_h = 2.0;

// Matches baffle structural boss centers.
boss_radius = 36.5;

// Guide holes sized for marking / pilot drilling.
guide_hole_d = 2.8;
center_guide_hole_d = 2.8;

module template_body(){
    union(){
        // Main solid footprint disk.
        cylinder(h=plate_th, d=template_od);

        // Underside locating plug/lip. This keys into the completed 2-1/8 in vent hole.
        // It is intentionally a solid circular plug (except for the center guide hole),
        // because the template itself is now used to transfer bolt-hole locations.
        translate([0,0,-locating_lip_h])
            cylinder(h=locating_lip_h+0.02, d=locating_lip_d);
    }
}

difference(){
    template_body();

    // Center guide remains available both before and after cutting the vent hole.
    translate([0,0,-locating_lip_h-0.2])
        cylinder(h=plate_th+locating_lip_h+0.4, d=center_guide_hole_d);

    // Three M2.5 screw-guide locations at 120 degrees.
    for(i=[0:2]){
        rotate([0,0,i*120])
            translate([boss_radius,0,-0.2])
                cylinder(h=plate_th+0.4, d=guide_hole_d);
    }
}
