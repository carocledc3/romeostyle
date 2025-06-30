#import "@romeo/romeostyle:0.0.1": *

#let colour-scheme = "blue"
#let colsc = palette.at(colour-scheme)

#show: schooldoc.with(
  author: ("Dr. Ivo Robotnik"),
  section: "CC13-1J",
  subject: "Pingas",
  title: "Snooping As Usual, I See?",
  colour-scheme: colour-scheme,
  font-family: "Cantarell",
  flags: ("showsection"),
  code: "32RS-TESTER"
)

#[
  #set text(size: 48pt)
#tables(
  colour-scheme: colour-scheme,
  border: true,
  columns: 5,
  stroke: none,
  mode: "h",
  alternating: "h",
  ..([#icon("asterisk") a],)*25
)]
