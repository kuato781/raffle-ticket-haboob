# Printable CAD Files

This directory contains the current Raffle Ticket Haboob printable models and editable OpenSCAD sources.

## Current Parts

| Part | Purpose |
|---|---|
| `raffle_ticket_haboob_receiver_threaded.*` | Threaded blower receiver / lid bulkhead |
| `raffle_ticket_haboob_knurled_locknut.*` | Underside hand-tightened receiver locknut |
| `raffle_ticket_haboob_plug.*` | Bayonet storage plug for the receiver |
| `raffle_ticket_haboob_baffle.*` | Three-screw anti-ingestion vent baffle |
| `raffle_ticket_haboob_layout_drill_template.*` | 82 mm two-sided layout and screw-hole transfer template |

The `.scad` files are the editable source. The `.stl` files are ready to import into a slicer.

## Recommended Quantity

- receiver: 1
- locknut: 1
- plug: 1
- baffle: 3
- layout/drill template: ideally 3

Printing three templates is recommended because the full 82 mm disks can be arranged simultaneously on the lid before drilling. This makes the three baffle footprints easy to space consistently and prevents overlap.

## Design Details

See [`../documentation/design-notes/README.md`](../documentation/design-notes/README.md) for the current dimensions, clearances, insert geometry and design history.

## Blower Compatibility

The receiver was designed around the **RYOBI PSBLB01B 18V ONE+ HP Compact Brushless 220 CFM Blower**.

Other blowers may require modification of the receiver bore, bayonet slot/lug geometry or overall dimensions.
