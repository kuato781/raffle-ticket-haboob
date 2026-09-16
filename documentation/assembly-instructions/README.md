# Raffle Ticket Haboob — Assembly Instructions

These instructions describe the current physically tested Raffle Ticket Haboob build.

## Before You Start

Read the root [`DISCLAIMER.md`](../../DISCLAIMER.md) first.

The tested build uses:

- one 2-gallon bucket and matching lid;
- RYOBI PSBLB01B compact blower;
- one printed threaded receiver;
- one printed knurled locknut;
- one printed bayonet plug;
- three printed vent baffles;
- ideally three printed layout/drill templates;
- three round mesh vent screens;
- nine M2.5 × 4 × 3.5 heat-set inserts;
- nine M2.5 × 4 mm button-head screws.

The templates, baffles, receiver, locknut and plug are in [`../../stl-scad/`](../../stl-scad/).

## 1. Print the Parts

Print:

- 1 × `raffle_ticket_haboob_receiver_threaded`
- 1 × `raffle_ticket_haboob_knurled_locknut`
- 1 × `raffle_ticket_haboob_plug`
- 3 × `raffle_ticket_haboob_baffle`
- 3 × `raffle_ticket_haboob_layout_drill_template` if possible

Three templates are recommended because they let you see the actual 82 mm footprint of all three baffles before drilling the lid.

Inspect every print for cracks, layer-separation, malformed threads or incomplete holes before assembly.

## 2. Install the Heat-Set Inserts

Each baffle has three mounting bosses.

Install one **M2.5 × 4 × 3.5** heat-set insert into each boss, for nine inserts total.

The current insert pocket is intentionally smaller than the insert OD so the insert should not simply fall into the hole. It should sit at the opening and require heat to be pressed into position.

Guidelines:

1. Heat the insert with a soldering iron or insert-installation tip.
2. Keep it square to the boss.
3. Press it slowly into the pocket.
4. Stop when the insert is seated without bulging or splitting the boss.
5. Allow the plastic to cool before installing screws.

## 3. Mark the Receiver Hole

The tested receiver-hole location places the hole center approximately **1-3/4 inches from the outside lid lip**.

Mark the center carefully.

Before drilling, confirm that the proposed receiver location leaves enough room for all three 82 mm vent/baffle footprints.

## 4. Lay Out the Three Vent/Baffle Locations

Use the layout templates **before cutting the vent holes**.

1. Place three templates **flat-side-up** on the lid.
2. Arrange them around the receiver location.
3. Confirm that the full 82 mm template disks do not overlap one another or interfere with the receiver area.
4. Rotate and space the templates until the layout looks clean and repeatable.
5. Use an awl or marker through each center hole to mark the three vent centers.

Because the template OD matches the baffle footprint, this step prevents the common failure mode of putting two vent holes so close together that the installed baffles collide.

## 5. Cut the Lid Holes

Cut:

- **1 × 2-1/2 inch hole** for the blower receiver;
- **3 × 2-1/8 inch holes** for the vent screens.

Use appropriate eye protection and support the lid so the hole saw does not grab or distort it excessively.

Deburr the cut edges after drilling.

## 6. Transfer the Baffle Screw Holes

The same template is used again after the vent holes are cut.

1. Flip the template over.
2. Insert the raised locating boss/lip into one finished 2-1/8 inch vent hole.
3. Confirm that the template sits flat and centered.
4. Mark all three M2.5 screw locations through the guide holes.
5. Repeat for the other two vent holes.
6. Drill the marked screw holes with an appropriate clearance drill for the M2.5 screws.

This two-sided process gives you both coarse layout and precise concentric mounting-hole transfer from the same fixture.

## 7. Install the Threaded Receiver

1. Insert the threaded receiver through the 2-1/2 inch lid hole from the top.
2. Thread the knurled locknut onto the receiver from the underside.
3. Tighten it firmly enough to clamp the lid without crushing or badly distorting the plastic.
4. Confirm that the receiver cannot rotate freely in the lid.

The receiver is removable by design so the hardware can be taken off for compact storage.

## 8. Install the Mesh Vent Screens

Install one round screen vent cover over each 2-1/8 inch vent hole.

Make sure:

- the screen sits flat;
- the four metal retaining tabs are fully engaged;
- no tab protrudes into a position that prevents the baffle from seating correctly.

The final baffle geometry includes a clear central zone designed to clear the measured screen retaining tabs.

## 9. Install the Three Baffles

Mount one baffle beneath each screen using three M2.5 × 4 mm button-head screws.

The current baffle has:

- three structural insert bosses at 120°;
- a perimeter cage to reduce ticket ingestion;
- a large central clear zone for the screen tabs;
- perimeter contact ribs that sit slightly taller than the structural bosses.

That extra rib height creates preload against the underside of the lid when the screws are tightened.

Tighten the screws evenly. Do not crank them down hard enough to strip inserts, crush the lid or distort the baffle.

## 10. Fit-Test the Plug

Insert the bayonet plug into the receiver and rotate it into the locking position.

It should:

- enter cleanly;
- rotate into engagement with both internal lugs;
- sit snugly enough not to rattle excessively;
- remain removable by hand.

Use the plug when the bucket is stored with tickets inside and the blower is removed.

## 11. Fit-Test the Blower

With the bucket empty:

1. Lock the RYOBI PSBLB01B into the receiver.
2. Verify engagement with both bayonet lugs.
3. Confirm that the receiver and locknut do not rotate in the lid.
4. Confirm all three vent paths are open.
5. Remove the blower before continuing.

Do not assume a different blower will fit. The receiver geometry was designed around the PSBLB01B.

## 12. Controlled Airflow Test

Before event use, perform a controlled test with a small ticket load.

1. Add a modest number of tickets.
2. Fully seat the lid.
3. Add secondary retention such as duct tape around the lid/bucket seam if desired.
4. Lock the blower into the receiver.
5. Stabilize the assembly.
6. Use only short blower pulses.
7. Watch for excessive lid ballooning, unusual movement, blocked vents, loose fasteners or tickets repeatedly lodging around one baffle.
8. Stop immediately if anything appears unsafe or mechanically loose.

The goal is not to hold the blower continuously. The intended action is:

**pulse → tickets lift/circulate → release → tickets settle → repeat**

## 13. Event-Day Use

1. Confirm the lid is fully seated.
2. Use secondary retention around the lid seam if desired.
3. Lock in the blower.
4. Keep the bucket stable.
5. Use short pulses to redistribute the tickets.
6. Remove the blower when mixing is complete.

If downward hand pressure on the lid is used to steady the assembly, do so only when your hand is in a safe position and **never treat hand pressure as the sole lid-retention method**.

## 14. Final Draw Procedure

The final baffle design greatly reduces ticket trapping, but the tested build can still occasionally leave a ticket lodged between a baffle and the lid.

Immediately before the draw:

1. Open the bucket.
2. Inspect all three baffles and the underside of the lid.
3. Remove any stuck ticket and return it to the bucket.
4. Give the ticket mass one final manual stir.
5. Draw normally.

This is the recommended practical safeguard for the remaining rare edge case.

## 15. End-of-Day Storage

If tickets remain in the bucket overnight or between event days:

1. Remove the blower.
2. Install the bayonet plug in the receiver.
3. Confirm the lid is fully seated before moving or storing the bucket.

For compact storage after the event:

1. Remove the receiver and locknut.
2. Remove the vent/baffle hardware if desired.
3. Put the removable hardware inside the bucket.
4. Nest the buckets and lids normally.

## Validation Status

The current build has been physically tested with:

- the actual RYOBI PSBLB01B blower;
- 2-gallon bucket/lid hardware;
- the printed threaded receiver and locknut;
- the printed bayonet plug;
- three round vent screens;
- the current three-screw baffle design;
- M2.5 heat-set inserts and button-head screws;
- real raffle tickets;
- internal side-view and bottom-view video during blower operation.

The current geometry is considered the production design for this repository.
