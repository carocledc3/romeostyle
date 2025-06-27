#import "colours.typ": palette

#let table(
  shade: "none",
  alternating: true,
  columns: (),
  rows: (),
  gutter: (),
  column-gutter: (),
  row-gutter: (),
  align: auto,
  stroke: 1pt + black,
  inset: 0% + 5pt,
  ..children
) = table(
  columns: columns,
  rows: rows,
  gutter: gutter,
  column-gutter: column-gutter,
  row-gutter: row-gutter,
  fill: none,
  align: align,
  stroke: stroke,
  inset: inset,
  ..children
)