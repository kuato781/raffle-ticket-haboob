// Raffle Ticket Haboob vent baffle v1.4
// 82 mm OD, 64.5 mm tab-clear zone, 3x M2.5 heat-set inserts
// v1.4: correct M2.5 x 4 x 3.5 insert geometry (4 mm length, 3.5 mm OD)
//       tighter heat-set pilot so insert does not fall through

$fn=180;

disc_d=82.0;
disc_th=2.5;

clear_id=64.5;
clear_r=clear_id/2;

boss_h=12.7;
rib_preload=0.50;       // ribs extend this much above boss contact plane
rib_h=boss_h+rib_preload;

rib_count=18;
rib_radial=4.0;
rib_tangent=2.2;
rib_radius=34.75;

boss_count=3;
boss_radius=36.5;
boss_od=8.0;

// M2.5 x 4.0 mm length x 3.5 mm OD heat-set insert pocket
// 3.2 mm pilot provides material for heat-set displacement; shallow lead-in centers insert.
insert_pocket_d=3.2;
insert_pocket_depth=4.2;
insert_leadin_d=3.6;
insert_leadin_h=0.6;

module structural_boss(angle=0){
    rotate([0,0,angle])
        translate([boss_radius,0,disc_th-0.25])
            difference(){
                cylinder(h=boss_h+0.25,d=boss_od);
                translate([0,0,boss_h+0.25-insert_pocket_depth])
                    cylinder(h=insert_pocket_depth+0.25,d=insert_pocket_d);
                translate([0,0,boss_h+0.25-insert_leadin_h])
                    cylinder(h=insert_leadin_h+0.25,d1=insert_pocket_d,d2=insert_leadin_d);
            }
}

union(){
    // Solid airflow-deflector disc
    cylinder(h=disc_th,d=disc_d);

    // Thin anti-ingestion ribs. Skip the three boss locations.
    // Start 0.20 mm into the disc so all ribs form one manifold solid.
    for(i=[0:rib_count-1]){
        if(i!=0 && i!=6 && i!=12)
            rotate([0,0,i*360/rib_count])
                translate([rib_radius,0,disc_th-0.20+(rib_h+0.20)/2])
                    cube([rib_radial,rib_tangent,rib_h+0.20],center=true);
    }

    // Three structural screw/insert bosses at 120 degrees.
    for(i=[0:boss_count-1])
        structural_boss(i*120);
}
