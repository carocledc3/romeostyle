#import "basecolours.typ": tailwind
#let daterender(date) = {}
#let weekdays = ("Mon", "Tue", "Wed", "Thu", "Fri", "Sat", "Sun");
#let daycolours = (
  gradient.linear(angle: 90deg, tailwind.blue-500.transparentize(70%), tailwind.blue-500.transparentize(30%)),
  gradient.linear(angle: 90deg, tailwind.red-500.transparentize(70%), tailwind.red-500.transparentize(30%)),
  gradient.linear(angle: 90deg, tailwind.green-500.transparentize(70%), tailwind.green-500.transparentize(30%)),
  gradient.linear(angle: 90deg, tailwind.yellow-500.transparentize(70%), tailwind.yellow-500.transparentize(30%)),
  gradient.linear(angle: 90deg, tailwind.cyan-500.transparentize(70%), tailwind.cyan-500.transparentize(30%)),
  gradient.linear(angle: 90deg, tailwind.fuchsia-500.transparentize(70%), tailwind.fuchsia-500.transparentize(30%)),
  gradient.linear(angle: 90deg, tailwind.gray-500.transparentize(70%), tailwind.gray-500.transparentize(30%)),
)

#let datecoloursquare(date, font-size) = {
  return box(inset: (y: -1em / 6), rect(
    inset: 1em / 6,
    height: font-size,
    width: auto,
    fill: daycolours.at(date.weekday() - 1),
    radius: 1em / 12,
    stroke: none,
  )[
    #show: align.with(horizon + center)
    #set text(5em / 6, weight: 900)
    #smallcaps(weekdays.at(date.weekday() - 1))
  ])
}
