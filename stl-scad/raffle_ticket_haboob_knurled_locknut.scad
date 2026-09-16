
$fn=180;

// Raffle-Ticket Hurricane / FPD
// Matching knurled locknut v0.3
// Units: mm

thread_major_d=62.4;
thread_depth=0.8;
thread_pitch=4.0;

radial_clearance=0.35;
internal_major_d=thread_major_d+2*radial_clearance;
internal_depth=thread_depth+0.10;
internal_core_d=internal_major_d-2*internal_depth;

nut_od=84.0;
nut_h=10.0;

knurl_count=40;
knurl_width=2.4;

module internal_thread_cutter() {
    r_minor = internal_core_d/2;
    tooth_w = thread_pitch*0.68;

    union() {
        translate([0,0,-0.2])
            cylinder(h=nut_h+0.4,d=internal_core_d);

        linear_extrude(
            height=nut_h,
            twist=360*nut_h/thread_pitch,
            slices=180,
            convexity=14
        )
        translate([r_minor-0.30,0])
        polygon(points=[
            [0,-tooth_w*0.30],
            [internal_depth+0.30,-tooth_w*0.14],
            [internal_depth+0.30, tooth_w*0.14],
            [0, tooth_w*0.30]
        ]);
    }
}

module knurled_body() {
    difference() {
        cylinder(h=nut_h,d=nut_od);

        for(i=[0:knurl_count-1]) {
            rotate([0,0,i*360/knurl_count])
                translate([nut_od/2+0.8,0,nut_h/2])
                    cube([3.4,knurl_width,nut_h+1],center=true);
        }
    }
}

difference() {
    knurled_body();
    internal_thread_cutter();

    translate([0,0,-0.15])
        cylinder(h=1.3,d1=internal_major_d+1.4,d2=internal_major_d);

    translate([0,0,nut_h-1.15])
        cylinder(h=1.3,d1=internal_major_d,d2=internal_major_d+1.4);
}
