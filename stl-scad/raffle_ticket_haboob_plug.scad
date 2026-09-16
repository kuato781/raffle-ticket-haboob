
$fn=120;

// Raffle-Ticket Hurricane — EOD bayonet plug
receiver_id=57.15;

// Proven receiver uses 5.5 mm lugs, 180° apart.
// Plug male stem gets generous printable clearance.
stem_od=56.20;
stem_len=26.0;

cap_od=82.55;
cap_th=5.0;

// Lug center is 17.25 mm below receiver top.
// With cap underside at z=stem_len, locking channel center:
lock_z=stem_len-17.25;   // 8.75 mm above stem bottom

slot_w=6.6;
slot_depth=4.4;
turn_angle=34;

// Simple chunky hand grip
grip_d=34;
grip_h=14;

module one_slot(angle=0){
    rotate([0,0,angle]){
        // Straight entry leg, open from stem bottom.
        translate([stem_od/2-slot_depth, -slot_w/2, -0.2])
            cube([slot_depth+1.0, slot_w, lock_z+slot_w/2+0.2]);

        // True curved locking leg.
        rotate_extrude(angle=turn_angle, convexity=8)
            translate([stem_od/2-slot_depth, lock_z-slot_w/2])
                square([slot_depth+1.0, slot_w]);
    }
}

difference(){
    union(){
        // Male bayonet stem
        cylinder(h=stem_len+0.25,d=stem_od);

        // Full sealing cap
        translate([0,0,stem_len-0.15])
            cylinder(h=cap_th+0.30,d=cap_od);

        // 12-sided easy-grab twist knob
        translate([0,0,stem_len+cap_th-0.20])
            cylinder(h=grip_h+0.20,d=grip_d,$fn=12);
    }

    one_slot(0);
    one_slot(180);
}
