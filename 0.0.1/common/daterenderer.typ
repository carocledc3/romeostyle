#let daterender(date) = {

}
#let weekdays = ("M", "T", "W", "H", "F", "R", "S");
#let daycolours = (
  rgb("#3574ef50"),
  rgb("#d8364d50"),
  rgb("#00984d50"),
  rgb("#edb70050"),
  rgb("#00d5dd50"),
  rgb("#d457c050"),
  rgb("#90909050"),
)

#let coloursquare(date, font-size) = {
  return box(inset: (y: -1em/6), square(
    size: font-size,
    fill: daycolours.at(date.weekday() - 1),
    radius: 1em/12,
    stroke: none,
    )[
    #show: align.with(horizon+center)
    #set text(5em/6, weight: 900)
    #weekdays.at(date.weekday() - 1)
    ])
}