#import "common/colours.typ": palette
#import "common/headings.typ": callHeading
#import "common/daterenderer.typ": coloursquare
#import "common/tables.typ": tables
#import "common/pagesizes.typ": pagesizes, margins

#let schooldoc(
  // METADATA
  author: "",
  title: "",
  subject: "",
  section: "",
  code: "",
  date: datetime.today(),
  flags: (),

  // STYLING OPTIONS
  paper: "shortbond",
  margin-mode: "standard",
  doc-columns: 1,
  colour-scheme: "default",
  font-family: "Romeosevka",
  font-size: 12pt,
  line-spacing: 1,
  par-spacing: 1,
  raw-font-scale: 1,
  math-font-scale: 6 / 5,
  bib-font-scale: 5 / 6,

  // ELEMENT OPTIONS
  heading-numbering: "1.1.1",
  heading-prefix: none,
  heading-style: "block",
  heading-scales: (1.5, 1.25, 1.125),
  outline-title: "Table of Contents",
  outline-columns: 1,
  bib-title: "References",
  bib-style: "ieee",
  bib-columns: 2,
  body,
) = [

  // DEFAULT COLSC PROTECTION
  #{
    colour-scheme = if (colour-scheme not in palette.keys()) { "default" } else { colour-scheme }
  }
  #let colsc = palette.at(colour-scheme)

  // TEXT
  #set text(
    font: (font-family, "Romeosevka", "Iosevka SS04"),
    size: font-size,
    fill: colsc.tx,
  )

  // FONT
  #show raw: set text(
    font: ("Romeosevka", "Iosevka SS04", "DejaVu Sans Mono"),
    size: font-size * raw-font-scale,
  )
  //// RAW TEXT
  #show raw.where(block: false): rawtext => box(
    fill: gradient.linear(angle: 90deg, colsc.it.transparentize(50%), colsc.it),
    inset: (x: 1em / 3),
    outset: (y: 1em / 4),
    radius: 1em / 4,
    stroke: 5pt / 6 + colsc.la.transparentize(100% / 3),
    text(5em / 6, rawtext),
  )
  #show raw.where(block: true): rawblock => {
    show raw.line: rl => {
      block(radius: 1em, spacing: -0.75em / 2, width: 100%, inset: 0em, grid(
        columns: (2em, 1fr),
        rows: 4em / 3,
        inset: (y: 0em, x: 0.5em),
        align: (horizon + right, horizon + left),
        fill: if (calc.even(rl.number)) { colsc.bg } else { colsc.it.mix(colsc.bg).mix(colsc.bg) },
        [#text(fill: colsc.ac, size: 2em / 3)[#rl.number]], rl.body,
      ))
    }
    rawblock
  }
  #show raw.where(block: true): rawblock => align(center, block(
    stroke: 1pt + colsc.la,
    inset: -0.125em,
    outset: (par.leading / 2) + 0.5pt,
    radius: 0.25em,
    spacing: 2em,
    width: if (flags.contains("reduced-codeblocks")) {
      200% / 3
    } else {
      95%
    },
    rawblock,
  ))

  // MATH TEXT
  #show math.equation: set text(
    font: "New Computer Modern Math",
    size: font-size * 1.125,
  )
  #show math.equation.where(block: true): set text(
    size: font-size * math-font-scale,
  )

  // HIGHLIGHTS
  #set highlight(
    fill: gradient.linear(angle: 90deg, colsc.it, colsc.la),
    radius: 1em / 3,
    extent: (1em / 4),
  )

  #let exhl(fill, body) = box(
    fill: fill,
    inset: (x: 1em / 3),
    outset: (y: 1em / 4),
    radius: 1em / 4,
    body,
  )

  // PARAGRAPHS
  #set par(
    justify: true,
    leading: 0.75em * line-spacing,
    spacing: 2em * par-spacing,
  )

  // PAGE
  #let marginval = 0.5in
  #set page(
    fill: colsc.bg,
    columns: doc-columns,
    width: pagesizes.at(paper).at(0),
    height: pagesizes.at(paper).at(1),
    margin: margins.at(margin-mode),
    footer: align(bottom, move(
      dx: if(margin-mode == "sunshine") { -1in }
      else if (margin-mode == "pati") { -1.5in }
      else {-0.5in},
      
      block(
        inset: 0.5em,
        width: if(margin-mode == "sunshine") { 100% + 2 * 1in }
      else if (margin-mode == "pati") { 100% + 2 * 1.25in }
      else {100% + 2 *0.5in},
        height: 0.35in, fill: gradient.linear(angle: 90deg, colsc.la, colsc.ac))[
      #set text(size: 18pt, fill: colsc.bg)
      #text(font: "Romeosymbols", baseline: -1pt)[a]
      #box(height: 100%, inset: (x: 0.5em, y: -0.5em))[
        #align(horizon, text(size: font-size)[
          #if (code != "") {
            [#box(fill: colsc.bg.transparentize(80%), inset: (x: 1em / 3), outset: (y: 1em / 4), radius: 1em / 4, stroke: 5pt / 6 + colsc.bg, text(
                5em / 6,
                font: "Romeosevka",
                code,
              ))]
          } #emph(strong(title))
        ])
      ]
      #h(1fr)
      #text(weight: 900, context counter(page).display())
    ])),
  )

  // potentially saved hundreds of lines by offloading heading styling to a different file
  #set heading(numbering: heading-numbering)
  #show heading: it => callHeading(
    scales: heading-scales,
    style: heading-style,
    heading-prefix,
    counter(heading).display(),
    heading-numbering,
    palette.at(colour-scheme),
    it.level,
    it.body,
  )

  // LISTS, ENUMS, and TERM LISTS
  #set list(marker: ("•", "‣", "▪"))

  #set enum(full: true, numbering: (..nums) => [
    #strong[#numbering("1.1.1.", ..nums)]
  ])

  #set terms( hanging-indent: 1em,)

  #show terms.item: ti => [
    - *#highlight(ti.term)* #ti.description
  ]

  // TABLE OF CONTENTS
  #set outline(
    indent: 1em,
    title: outline-title,
  )

  #show outline: out => {
    show heading: none
    callHeading(none, (text(font: "Material Symbols Sharp", "toc", size: 2em * 0.75)), none, palette.at(colour-scheme), 1, align(center, text(
      size: 1.5em,
      outline.title,
    )))
    out
  }

  #show outline.entry: oleg => {
    if (str(repr(oleg.inner())).contains("[" + bib-title + "]")) {
      link(oleg.element.location(), oleg.indented(text(font: "Material Symbols Sharp", baseline: 2pt, "book") + oleg.prefix(), oleg.inner()))
    } else {
      link(oleg.element.location(), oleg.indented(heading-prefix + oleg.prefix(), oleg.inner()))
    }
  }
  #show outline.entry.where(level: 1): strong
  #show outline.entry.where(level: 2): text.with(colsc.da)
  #show outline.entry.where(level: 3): text.with(colsc.ac)
  #show outline.entry.where(level: 4): text.with(colsc.tx)
  #show outline.entry.where(level: 5): text.with(colsc.da)
  #show outline.entry.where(level: 6): text.with(colsc.ac)
  #show outline.entry.where(level: 7): text.with(colsc.la)

  // BIBLIOGRAPHIES
  #set bibliography(full: true, style: bib-style, title: bib-title)

  #show bibliography: bib => {
    show heading: none
    show link: set text(fill: colsc.ac)
    callHeading(
      scales: heading-scales,
      style: heading-style,
      none,
      (text(font: "Material Symbols Sharp", "book", size: 2em * 0.75)),
      none,
      palette.at(colour-scheme),
      1,
      align(center, text(size: 1.5em, bib.title)),
    )
    set text(1em * bib-font-scale)
    columns(bib-columns, bib)
  }

  // SHAPES AND STROKES
  #set square(stroke: 1pt + colsc.tx)
  #set line(stroke: 1pt + colsc.tx)

  // TABLES all handled by common/tables.typ

  // DOCUMENT HEADER
  #[
    #show: align.with(center)
    #exhl(gradient.linear(angle: 90deg, colsc.da, colsc.tx))[
      #text(fill: colsc.bg, strong(author))
    ] \
    *#subject* • #emph(title) \
    #raw(code) • #date.display("[day padding:zero] [month repr:short] [year repr:full]") #coloursquare(date, font-size * 1.125)
    #line(length: 100%)
  ]


  // DOCUMENT METADATA
  #set document(
    author: author,
    date: date,
    title: code + " - " + subject + " - " + title,
    keywords: (
      author,
      code,
      subject,
      title,
    )
  )

  #body
]

#show: schooldoc.with(
  colour-scheme: "rose",
  margin-mode: "sunshine",
  author: "Carlos Romeo Clemente Del Castillo III",
  section: "ENGL100-CITCS-1L",
  title: "Parháirýŋge",
  paper: "pc",
  doc-columns: 3,
  font-family: "Romeosevka",
  font-size: 12pt,
  subject: "Statistical Design and Analysis",
  code: "30PC-TEST",
  flags: (),
)

#lorem(480)