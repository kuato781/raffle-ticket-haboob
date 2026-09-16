
$fn=180;

// Raffle-Ticket Hurricane / FPD
// Threaded blower receiver v0.3
// Units: mm

receiver_id=57.15;
receiver_od=82.55;
receiver_h=30.0;

lug_d=5.5;
lug_projection=3.0;
lug_bottom_z=10.0;
lug_root_overlap=0.6;

thread_major_d=62.4;
thread_depth=0.8;
thread_pitch=4.0;
thread_len=14.0;
thread_core_d=thread_major_d-2*thread_depth;

id_r=receiver_id/2;
lug_center_z=lug_bottom_z+lug_d/2;

module external_thread() {
    r_minor = thread_core_d/2;
    tooth_w = thread_pitch*0.64;

    translate([0,0,-thread_len])
    linear_extrude(
        height=thread_len,
        twist=360*thread_len/thread_pitch,
        slices=220,
        convexity=12
    )
    translate([r_minor-0.30,0])
    polygon(points=[
        [0,-tooth_w*0.28],
        [thread_depth+0.30,-tooth_w*0.12],
        [thread_depth+0.30, tooth_w*0.12],
        [0, tooth_w*0.28]
    ]);
}

module upper_receiver() {
    difference() {
        cylinder(h=receiver_h,d=receiver_od);
        translate([0,0,-0.2])
            cylinder(h=receiver_h+0.4,d=receiver_id);
    }
}

module lug_pos() {
    translate([id_r-lug_projection,0,lug_center_z])
        rotate([0,90,0])
            cylinder(h=lug_projection+lug_root_overlap,d=lug_d);
}

module lug_neg() {
    translate([-id_r-lug_root_overlap,0,lug_center_z])
        rotate([0,90,0])
            cylinder(h=lug_projection+lug_root_overlap,d=lug_d);
}

module threaded_neck() {
    difference() {
        union() {
            translate([0,0,-thread_len])
                cylinder(h=thread_len,d=thread_core_d);
            external_thread();
        }

        translate([0,0,-thread_len-0.2])
            cylinder(h=thread_len+0.4,d=receiver_id);
    }
}

union() {
    upper_receiver();
    lug_pos();
    lug_neg();
    threaded_neck();
}
