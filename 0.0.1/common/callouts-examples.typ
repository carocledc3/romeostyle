#import "colours.typ": palette
#import "icons.typ": icon as iconloader
#set text(font:"Cantarell")
#set page(width: 7in, height: 7in, margin: 0.25in)
#let callout(
  colour-scheme: "grey",
  title: "",
  body: "",
  icon: "info",
  alignment: center,
  width: 500% / 6,
) = [
  #let colsc = palette.at(colour-scheme)
  #grid(
    columns: 1 * 100%,
    align: center,
    inset: 0em,
    grid.cell(block(

      height: 2em,
      stroke: (bottom: none, rest: 1pt + colsc.da.transparentize(50%)),
      fill: gradient.linear(angle: 90deg, colsc.da, colsc.tx),
      inset: 1em / 2,
      width: width,
      [
        #show: align.with(alignment)
        #set text(fill: colsc.bg, weight: "bold", size: 1.25em)
        #iconloader(icon) #title
      ],
    )),
    grid.cell(block(
      fill: gradient.linear(angle: 90deg, colsc.it.mix(colsc.bg), colsc.it),
      stroke: (top: none, rest: 1pt + colsc.ac.transparentize(50%)),
      inset: 1em / 2,
      width: width,
      [
        #show: align.with(alignment)
        #body],
    ))
  )
]


#callout(
  colour-scheme: "brown",
  icon: "asterisk",
  title: "Instructions",
  body: "FDFDhfegwereb    febhfdbdbhbffbd3uryhurh",
  alignment: horizon+center,
)

#[

]