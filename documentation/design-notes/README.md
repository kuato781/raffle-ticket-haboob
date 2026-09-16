# Raffle Ticket Haboob — Design Notes

This file captures the dimensions and design decisions behind the current parts in [`../../stl-scad/`](../../stl-scad/).

The editable OpenSCAD files remain the authoritative source for printable geometry.

## Blower Receiver

Current receiver source: [`raffle_ticket_haboob_receiver_threaded.scad`](../../stl-scad/raffle_ticket_haboob_receiver_threaded.scad)

Key dimensions:

| Feature | Dimension |
|---|---:|
| Receiver ID | 57.15 mm (2.25 in) |
| Receiver OD | 82.55 mm (3.25 in) |
| Receiver height | 30.0 mm |
| Bayonet lug diameter | 5.5 mm |
| Lug inward projection | 3.0 mm |
| Lug bottom height | 10.0 mm from receiver base |
| Thread major diameter | 62.4 mm |
| Thread depth | 0.8 mm |
| Thread pitch | 4.0 mm |
| Threaded neck length | 14.0 mm |

The upper receiver fit was established first and then intentionally preserved while the removable bulkhead/threaded mounting system was developed around it.

## Knurled Locknut

Current source: [`raffle_ticket_haboob_knurled_locknut.scad`](../../stl-scad/raffle_ticket_haboob_knurled_locknut.scad)

Key dimensions:

| Feature | Dimension |
|---|---:|
| Nominal receiver thread major diameter | 62.4 mm |
| Internal radial clearance | 0.35 mm |
| Thread pitch | 4.0 mm |
| Nut OD | 84.0 mm |
| Nut height | 10.0 mm |
| Knurl count | 40 |

The coarse thread was chosen for easy printing, easy hand assembly and tolerance of normal FDM surface variation.

## Vent Baffle

Current source: [`raffle_ticket_haboob_baffle.scad`](../../stl-scad/raffle_ticket_haboob_baffle.scad)

Key dimensions:

| Feature | Dimension |
|---|---:|
| Baffle OD | 82.0 mm |
| Solid deflector thickness | 2.5 mm |
| Central tab-clear diameter | 64.5 mm |
| Structural boss count | 3 at 120° |
| Boss center radius | 36.5 mm |
| Boss OD | 8.0 mm |
| Boss height | 12.7 mm |
| Rib preload above boss plane | 0.50 mm |
| Rib count positions | 18 total positions, with three omitted at bosses |
| Rib radial dimension | 4.0 mm |
| Rib tangential thickness | 2.2 mm |
| Rib center radius | 34.75 mm |
| Insert thread | M2.5 |
| Insert length | 4.0 mm |
| Insert OD | 3.5 mm |
| Insert pilot diameter | 3.2 mm |
| Insert pocket depth | 4.2 mm |
| Insert lead-in diameter | 3.6 mm |

### Why 64.5 mm of central clearance?

The physical metal vent-screen hardware has four retaining tabs. Their measured end-to-end span was approximately 63.8 mm.

Early three-boss baffles could land partially on those tabs, which propped one side of a baffle away from the lid and created a gap large enough for tickets to enter.

The final 64.5 mm clear diameter moves every baffle contact point outside the tab envelope while retaining the simpler three-screw mounting pattern.

### Why the ribs are taller than the bosses

Hot-glued prototypes revealed that very small uneven gaps were enough for a ticket edge to work between the baffle and lid.

The final screw-mounted design therefore makes the perimeter ribs **0.50 mm taller than the structural boss contact plane**. Tightening the three mounting screws preloads those rib tops against the lid and accommodates some normal lid waviness.

This does not produce a mathematically perfect seal; physical testing still produced an occasional trapped ticket. The event procedure therefore includes a final underside inspection and manual stir before drawing.

## Layout / Drill Template

Current source: [`raffle_ticket_haboob_layout_drill_template.scad`](../../stl-scad/raffle_ticket_haboob_layout_drill_template.scad)

Key dimensions:

| Feature | Dimension |
|---|---:|
| Template OD | 82.0 mm |
| Plate thickness | 3.0 mm |
| Vent-hole nominal diameter | 53.975 mm (2-1/8 in) |
| Locating boss/lip OD | 53.475 mm |
| Locating boss/lip height | 2.0 mm |
| Screw-hole center radius | 36.5 mm |
| Screw guide diameter | 2.8 mm |
| Center guide diameter | 2.8 mm |

The template intentionally performs two jobs:

1. **Flat side up:** three printed copies can be arranged simultaneously to represent the full baffle footprints and establish consistent vent spacing.
2. **Flipped over after cutting:** the 53.475 mm locating boss keys into each completed 2-1/8 in vent hole so the three screw-hole centers can be transferred concentrically.

This makes repeated lids much easier to build with nearly identical geometry.

## Storage Plug

Current source: [`raffle_ticket_haboob_plug.scad`](../../stl-scad/raffle_ticket_haboob_plug.scad)

Key dimensions in the repository source:

| Feature | Dimension |
|---|---:|
| Male stem OD | 56.20 mm |
| Stem length | 26.0 mm |
| Cap OD | 82.55 mm |
| Cap thickness | 5.0 mm |
| Slot width | 6.6 mm |
| Slot radial depth | 4.4 mm |
| Locking turn | 34° |
| Grip diameter | 34 mm |
| Grip height | 14 mm |

The plug uses the same pair of receiver lugs as the blower bayonet and gives the bucket a simple closure when the blower is removed overnight or between event days.

## Airflow Estimate

The project uses a blower rated at 220 CFM.

Treating the receiver as an ideal 2.25-inch circular flow area gives a rough average velocity on the order of **90 MPH**.

That calculation intentionally ignores losses, blower operating-point changes, turbulence, leakage, blockage, ticket loading and the actual nonuniform velocity profile. It is therefore useful only as an order-of-magnitude project description, not as a measured performance claim.

The blower manufacturer separately rates the tool up to 140 MPH.

## Development Sequence

The physical iterations were roughly:

1. Fit-test a simple receiver against the RYOBI bayonet.
2. Preserve that proven upper geometry and add a threaded removable neck.
3. Add the knurled underside locknut.
4. Add an end-of-day bayonet plug.
5. Cut screened exhaust vents in the lid.
6. Observe lid ballooning and tickets plastering against the screens.
7. Add simple mushroom-style deflector discs on standoffs.
8. Observe tickets entering through the open perimeter gap.
9. Add a perimeter cage.
10. Replace hot glue with three M2.5 heat-set insert bosses.
11. Discover interference between the three-boss pattern and the screen's four retaining tabs.
12. Enlarge the central no-contact zone to 64.5 mm.
13. Add stronger rib preload against the lid.
14. Turn the drill template into a full 82 mm two-sided layout/registration fixture.

The final design is the result of physical observation rather than CAD-only assumptions.
