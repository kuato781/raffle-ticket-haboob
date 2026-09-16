# Raffle Ticket Haboob

![Raffle Ticket Haboob](haboob_github_social_1280x640.png)

A 3D-printed, blower-powered raffle-ticket mixer built around a 2-gallon bucket, a removable lid assembly, and a compact RYOBI cordless blower.

The goal is simple: break up the ticket clumps that survive ordinary bucket shaking and force the whole ticket mass into motion before a drawing.

The operating principle is **#FPD — Forced Participant Dispersion**.

In less formal engineering language: **fuck your clumps.**

## What It Does

The Haboob injects a high-volume air stream into a raffle bucket through a bayonet-style receiver mounted in the lid. Three screened exhaust openings allow air to escape while printed internal baffles reduce the tendency for tickets to plaster themselves directly against the screens.

The blower is used in short pulses rather than held continuously. Each pulse lifts and redistributes the ticket mass, then lets it settle before the next pulse.

The project was physically prototyped and iterated using actual raffle tickets, including internal video taken from inside the bucket during testing.

> **Airflow note:** The project artwork references **90 MPH winds**. That number is a rough idealized estimate of average air velocity through the approximately 2.25-inch receiver bore at 220 CFM. It is not a measured ticket velocity or a calibrated performance rating. The RYOBI blower itself is manufacturer-rated up to 140 MPH.

## Designed Blower

The receiver geometry was designed and physically fit-tested with the:

**RYOBI 18V ONE+ HP Compact Brushless 220 CFM Blower — model PSBLB01B**

- 220 CFM rated airflow
- up to 140 MPH manufacturer-rated airspeed
- product page: https://www.ryobitools.com/products/46396047137

Other blowers may work, but the bayonet receiver, bore, lug locations and clearances were designed around this specific tool. Using another blower may require changes to the receiver geometry.

## Major Components

The lid assembly consists of:

- threaded blower receiver;
- knurled underside locknut;
- removable bayonet storage plug;
- three round mesh vent screens;
- three internal anti-ingestion baffles;
- nine M2.5 × 4 mm button-head screws;
- nine M2.5 heat-set inserts;
- one reusable layout/drill template.

The removable threaded receiver and vent hardware allow the lid components to be taken off for storage so the buckets and lids can still nest/stack normally.

## Shopping List

| Item | Notes | Link |
|---|---|---|
| Round screen vent covers | Three per lid | https://www.amazon.com/gp/product/B0F9F76M15/ref=ox_sc_act_title_1 |
| M2.5 heat-set inserts | **M2.5 × 4 × 3.5** — M2.5 thread, 4 mm length, 3.5 mm OD | https://www.amazon.com/dp/B0F2N8QY45 |
| Awl | Useful for transferring template hole locations | https://www.amazon.com/dp/B0D6NJ2XSF |
| Hole saw set | Includes the required 2-1/2 in and 2-1/8 in sizes | https://www.harborfreight.com/34-in-to-5-in-carbon-steel-hole-saw-set-18-piece-57524.html |
| Home Depot orange 2-gallon bucket | Orange bucket option | https://www.homedepot.com/p/The-Home-Depot-2-gal-Orange-paint-Bucket-PN0192/321367180 |
| Home Depot orange lid | Matching orange lid | https://www.homedepot.com/p/2-Gal-Orange-Lid-RG502LHD/332526779 |
| Leaktite white 2-gallon bucket | White bucket option | https://www.homedepot.com/p/Leaktite-2-Gallon-White-Paint-Bucket-2GL-WHITE-PAIL/202264039 |
| Leaktite 2-gallon lid | Matching white lid | https://www.homedepot.com/p/Leaktite-2-gal-Bucket-Lid-210655/202264036 |
| M2.5 × 4 mm button-head screws | Nine per lid | Source locally or from your preferred hardware supplier |

See also: [`buy-list/README.md`](buy-list/README.md).

## Printed Parts

Current printable files are in [`stl-scad/`](stl-scad/):

- blower receiver;
- knurled locknut;
- bayonet storage plug;
- vent baffle;
- layout/drill template;
- editable OpenSCAD sources.

A Bambu Studio project is also included in [`bambu-sudio-3mf/`](bambu-sudio-3mf/).

The repository intentionally has **no V1/V2 directory split**. Unlike the Spektrum iX14 stand project, this project has one current physically validated design rather than parallel legacy/current versions.

## Lid Layout

### Receiver hole

Cut one **2-1/2 inch** hole for the blower receiver.

The tested layout places the receiver-hole center approximately **1-3/4 inches from the outside lid lip**.

### Vent holes

Cut three **2-1/8 inch** holes for the vent screens.

The included 82 mm layout/drill template is designed to make this repeatable:

1. Print **three templates** if possible.
2. Place all three templates flat-side-up on the lid.
3. Arrange them around the receiver location so the full 82 mm baffle footprints clear one another and have the spacing/orientation you want.
4. Mark the center hole in each template.
5. Cut the three 2-1/8 inch vent holes.
6. Flip the template over.
7. Insert the raised locating boss/lip into each finished vent hole.
8. Use the three guide holes to mark the M2.5 mounting screw locations.

Using the same template for both layout and bolt-hole transfer makes multiple lids much easier to reproduce with consistent geometry.

## Assembly

Detailed instructions are in [`documentation/assembly-instructions/README.md`](documentation/assembly-instructions/README.md).

High-level sequence:

1. Print the receiver, locknut, plug, three baffles and layout/drill templates.
2. Install the M2.5 heat-set inserts in the three bosses on each baffle.
3. Lay out and cut the 2-1/2 inch receiver hole.
4. Use three layout templates to establish the three 2-1/8 inch vent positions with enough clearance between the full baffle footprints.
5. Cut the three vent holes.
6. Flip/key the template into each finished vent hole and mark the three M2.5 screw holes.
7. Install the threaded receiver from the top and secure it below the lid with the knurled locknut.
8. Install the three round mesh vent screens.
9. Install one baffle beneath each vent using three M2.5 × 4 mm button-head screws.

The current baffle uses three heat-set-insert mounting bosses and a perimeter cage. The contact ribs intentionally stand slightly proud of the bosses so tightening the screws preloads the rib tops against the underside of the lid and reduces ticket-ingestion gaps.

## Operation

1. Make sure the lid is fully seated on the bucket.
2. For event use, adding duct tape around the lid/bucket seam is recommended as secondary retention.
3. Lock the blower into the bayonet receiver.
4. Keep the assembly stable and the lid restrained. If it can be done safely, steady downward pressure on the lid can help control movement, but **do not rely on hand pressure as the only lid-retention method**.
5. **Pulse** the blower rather than holding it continuously.
6. Let the tickets lift, circulate and settle between pulses.
7. Remove the blower when mixing is complete.

The airflow is intentionally substantial. Do not operate the system with an unsecured lid, damaged printed parts, loose hardware or bystanders positioned where a lid or loose component could strike them.

## Drawing Workflow

The baffle system greatly reduces tickets getting trapped against the vent screens, but the project is not intended to guarantee that absolutely zero tickets can ever lodge between a baffle and the lid.

Before a final drawing:

1. Open the bucket.
2. Inspect the underside of the lid and all three baffles.
3. Remove any ticket that may have lodged there and return it to the bucket.
4. Give the tickets one final manual stir.
5. Draw normally.

That last inspection/manual stir is the practical final safeguard against the occasional straggler.

## End-of-Day Storage

When the bucket is being stored with tickets still inside:

- remove the blower;
- install the bayonet plug in the receiver opening;
- confirm the lid is fully seated before moving or storing the bucket.

For compact storage after the event, the lid hardware can be removed and placed inside each bucket. The buckets and bare lids can then nest/stack into one another.

## Product Photos

Physical-build product images are in [`documentation/product-images/`](documentation/product-images/).

The set includes:

- receiver, locknut and plug;
- baffle and drill-template hardware;
- mesh vent screens;
- completed lid;
- assembled bucket;
- blower installed in the receiver;
- bucket with the storage plug installed.

A contact sheet is included as [`00-raffle-ticket-haboob-contact-sheet.png`](documentation/product-images/00-raffle-ticket-haboob-contact-sheet.png).

## Development / Test Videos

Internal testing videos are in [`documentation/videos/`](documentation/videos/):

- [`haboob-bottom-view.mov`](documentation/videos/haboob-bottom-view.mov)
- [`haboob-side-view.mov`](documentation/videos/haboob-side-view.mov)

The internal camera testing was deliberately low-tech: an iPhone was taped inside the bucket so the ticket behavior could be observed during actual blower operation.

Those tests exposed two useful problems that drove the final baffle design:

- tickets could plaster directly against the vent screens;
- tickets could sometimes slip into the gap between an early baffle and the lid.

The final larger baffle geometry clears the screen retaining tabs, uses a cage around the perimeter and adds mechanical preload against the lid.

## Development History

This project followed the same process as the other Arroyo 3D-printing projects:

**measure → model → print → physically test → revise**

The major progression was:

1. Prove that the RYOBI blower could lock into a printed receiver.
2. Convert the receiver to a removable threaded bulkhead so lids could still stack.
3. Add a removable bayonet plug for overnight/event storage.
4. Add three screened exhaust vents to relieve lid pressure.
5. Add simple standoff baffles after tickets were observed plastering against the screens.
6. Add a perimeter cage after tickets were observed entering the open annular gap.
7. Add heat-set inserts and screw mounting so baffle height would be repeatable instead of depending on hot glue.
8. Enlarge the baffle clear zone to avoid the four metal retaining tabs on the vent screens.
9. Add preload to the baffle contact ribs to reduce the remaining lid gap.
10. Convert the drill template into a two-sided layout/registration fixture so multiple lids can be built with repeatable spacing.

The current geometry has been physically tested with the actual bucket, screens, fasteners, inserts, tickets and RYOBI blower.

## AI-Assisted Design and Development

This project was developed with AI assistance.

AI was used to help:

- turn measurements and fit observations into printable geometry;
- iterate receiver, thread, bayonet, baffle and template designs;
- calculate rough airflow estimates;
- generate editable OpenSCAD sources and STL models;
- analyze physical-test results and revise the design;
- organize documentation and repository structure;
- clean up product photography and create project artwork.

The CAD was never treated as proof by itself. Physical fit, actual airflow behavior and event workflow got the final vote.

## Repository Organization

| Directory | Contents |
|---|---|
| `stl-scad/` | Current printable STL files plus editable OpenSCAD source |
| `bambu-sudio-3mf/` | Bambu Studio project file(s) |
| `buy-list/` | Shopping list and hardware requirements |
| `documentation/assembly-instructions/` | Detailed build and assembly procedure |
| `documentation/product-images/` | Product photographs and contact sheet |
| `documentation/videos/` | Physical airflow/development test videos |

## Important Safety Information

This project combines 3D-printed parts, a high-output blower and a bucket lid that can become pressurized if airflow is restricted.

- Inspect all printed parts, heat-set inserts, screws, vent screens, receiver threads and bayonet features before use.
- Confirm that the lid is fully seated and positively retained before operating the blower.
- Never operate with blocked vents.
- Use short blower pulses rather than sustained operation.
- Keep faces, hands and bystanders out of any potential lid/component path.
- Stop immediately if the lid deforms excessively, hardware moves, the receiver loosens or any printed part cracks.
- Verify that your specific bucket, lid, blower and printed parts fit correctly before event use.
- Read [`DISCLAIMER.md`](DISCLAIMER.md) before building or operating the design.

This is an independent project and is not affiliated with or endorsed by RYOBI, Techtronic Industries, The Home Depot, Leaktite, Amazon or Harbor Freight.

## License

This project is provided under the [Creative Commons Attribution-NonCommercial 4.0 International License](LICENSE).

You may print, copy, share and modify the files for noncommercial purposes with attribution. Changes must be identified.

The original files and derivatives may not be sold or otherwise used commercially without separate permission from the creator.

## Why?

Because hand-shaking a bucket full of thin paper raffle tickets apparently wasn't enough.

So naturally the next step was:

**a cordless blower + custom bayonet hardware + threaded bulkhead + screened exhaust vents + anti-ingestion baffles + heat-set inserts + reusable drill fixtures + internal test footage.**

For a raffle bucket.

#FPD.
