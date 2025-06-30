/*
KEY: TX: 950 || DA: 800 || AC: 600 || LA: 400 || IT: 200 || BG: 050
*/
#import "basecolours.typ": *

#let palette = (
  red: ( tx: tailwind.red-950, da: tailwind.red-800, ac: tailwind.red-600, la: tailwind.red-400, it: tailwind.red-200, bg: tailwind.red-50 ),
  scarlet: (
    tx: tailwind.red-950.mix(tailwind.orange-950),
    da: tailwind.red-800.mix(tailwind.orange-800),
    ac: tailwind.red-600.mix(tailwind.orange-600), 
    la: tailwind.red-400.mix(tailwind.orange-400),
    it: tailwind.red-200.mix(tailwind.orange-200),
    bg: tailwind.red-50.mix(tailwind.orange-50)
    ),
  orange: ( tx: tailwind.orange-950, da: tailwind.orange-800, ac: tailwind.orange-600, la: tailwind.orange-400, it: tailwind.orange-200, bg: tailwind.orange-50 ),
  amber: ( tx: tailwind.amber-950, da: tailwind.amber-800, ac: tailwind.amber-600, la: tailwind.amber-400, it: tailwind.amber-200, bg: tailwind.amber-50 ),
  yellow: ( tx: tailwind.yellow-950, da: tailwind.yellow-800, ac: tailwind.yellow-600, la: tailwind.yellow-400, it: tailwind.yellow-200, bg: tailwind.yellow-50 ),
  pear: (
    tx: tailwind.yellow-950.mix(tailwind.lime-950),
    da: tailwind.yellow-800.mix(tailwind.lime-800),
    ac: tailwind.yellow-600.mix(tailwind.lime-600), 
    la: tailwind.yellow-400.mix(tailwind.lime-400),
    it: tailwind.yellow-200.mix(tailwind.lime-200),
    bg: tailwind.yellow-50.mix(tailwind.lime-50)
    ),
  lime: ( tx: tailwind.lime-950, da: tailwind.lime-800, ac: tailwind.lime-600, la: tailwind.lime-400, it: tailwind.lime-200, bg: tailwind.lime-50 ),
  midgreen: (
    tx: tailwind.green-950.mix(tailwind.lime-950),
    da: tailwind.green-800.mix(tailwind.lime-800),
    ac: tailwind.green-600.mix(tailwind.lime-600), 
    la: tailwind.green-400.mix(tailwind.lime-400),
    it: tailwind.green-200.mix(tailwind.lime-200),
    bg: tailwind.green-50.mix(tailwind.lime-50)
    ),
  green: ( tx: tailwind.green-950, da: tailwind.green-800, ac: tailwind.green-600, la: tailwind.green-400, it: tailwind.green-200, bg: tailwind.green-50 ),
  emerald: ( tx: tailwind.emerald-950, da: tailwind.emerald-800, ac: tailwind.emerald-600, la: tailwind.emerald-400, it: tailwind.emerald-200, bg: tailwind.emerald-50 ),
  teal: ( tx: tailwind.teal-950, da: tailwind.teal-800, ac: tailwind.teal-600, la: tailwind.teal-400, it: tailwind.teal-200, bg: tailwind.teal-50 ),
  cyan: ( tx: tailwind.cyan-950, da: tailwind.cyan-800, ac: tailwind.cyan-600, la: tailwind.cyan-400, it: tailwind.cyan-200, bg: tailwind.cyan-50 ),
  sky: ( tx: tailwind.sky-950, da: tailwind.sky-800, ac: tailwind.sky-600, la: tailwind.sky-400, it: tailwind.sky-200, bg: tailwind.sky-50 ),
  cerulean: (
    tx: tailwind.sky-950.mix(tailwind.blue-950),
    da: tailwind.sky-800.mix(tailwind.blue-800),
    ac: tailwind.sky-600.mix(tailwind.blue-600), 
    la: tailwind.sky-400.mix(tailwind.blue-400),
    it: tailwind.sky-200.mix(tailwind.blue-200),
    bg: tailwind.sky-50.mix(tailwind.blue-50)
    ),
  blue: ( tx: tailwind.blue-950, da: tailwind.blue-800, ac: tailwind.blue-600, la: tailwind.blue-400, it: tailwind.blue-200, bg: tailwind.blue-50 ),

  indigo: ( tx: tailwind.indigo-950, da: tailwind.indigo-800, ac: tailwind.indigo-600, la: tailwind.indigo-400, it: tailwind.indigo-200, bg: tailwind.indigo-50 ),
  violet: ( tx: tailwind.violet-950, da: tailwind.violet-800, ac: tailwind.violet-600, la: tailwind.violet-400, it: tailwind.violet-200, bg: tailwind.violet-50 ),
  purple: ( tx: tailwind.purple-950, da: tailwind.purple-800, ac: tailwind.purple-600, la: tailwind.purple-400, it: tailwind.purple-200, bg: tailwind.purple-50 ),
  fuchsia: ( tx: tailwind.fuchsia-950, da: tailwind.fuchsia-800, ac: tailwind.fuchsia-600, la: tailwind.fuchsia-400, it: tailwind.fuchsia-200, bg: tailwind.fuchsia-50 ),
  magenta: (
    tx: tailwind.fuchsia-950.mix(tailwind.pink-950),
    da: tailwind.fuchsia-800.mix(tailwind.pink-800),
    ac: tailwind.fuchsia-600.mix(tailwind.pink-600), 
    la: tailwind.fuchsia-400.mix(tailwind.pink-400),
    it: tailwind.fuchsia-200.mix(tailwind.pink-200),
    bg: tailwind.fuchsia-50.mix(tailwind.pink-50)
    ),
  pink: ( tx: tailwind.pink-950, da: tailwind.pink-800, ac: tailwind.pink-600, la: tailwind.pink-400, it: tailwind.pink-200, bg: tailwind.pink-50 ),
  rose: ( tx: tailwind.rose-950, da: tailwind.rose-800, ac: tailwind.rose-600, la: tailwind.rose-400, it: tailwind.rose-200, bg: tailwind.rose-50 ),
  rosegold: (
    tx: tailwind.rose-950.mix(tailwind.stone-950),
    da: tailwind.rose-800.mix(tailwind.stone-800),
    ac: tailwind.rose-600.mix(tailwind.stone-600), 
    la: tailwind.rose-400.mix(tailwind.stone-400),
    it: tailwind.rose-200.mix(tailwind.stone-300),
    bg: tailwind.rose-50.mix(tailwind.stone-100)
    ),
  brown: (
    tx: tailwind.orange-950.mix(tailwind.stone-950),
    da: tailwind.orange-800.mix(tailwind.stone-800),
    ac: tailwind.orange-600.mix(tailwind.stone-600), 
    la: tailwind.orange-400.mix(tailwind.stone-400),
    it: tailwind.orange-200.mix(tailwind.stone-300),
    bg: tailwind.orange-50.mix(tailwind.stone-100)
    ),
  gold: (
    tx: tailwind.yellow-950.mix(tailwind.stone-950),
    da: tailwind.yellow-800.mix(tailwind.stone-800),
    ac: tailwind.yellow-600.mix(tailwind.stone-600), 
    la: tailwind.yellow-400.mix(tailwind.stone-400),
    it: tailwind.yellow-200.mix(tailwind.stone-300),
    bg: tailwind.yellow-50.mix(tailwind.stone-100)
    ),
  pine: (
    tx: tailwind.emerald-950.mix(tailwind.stone-950),
    da: tailwind.emerald-800.mix(tailwind.stone-800),
    ac: tailwind.emerald-600.mix(tailwind.stone-600), 
    la: tailwind.emerald-400.mix(tailwind.stone-400),
    it: tailwind.emerald-200.mix(tailwind.stone-300),
    bg: tailwind.emerald-50.mix(tailwind.stone-100)
  ),
  bluegrey: (
    tx: tailwind.blue-950.mix(tailwind.stone-950),
    da: tailwind.blue-800.mix(tailwind.stone-800),
    ac: tailwind.blue-600.mix(tailwind.stone-600), 
    la: tailwind.blue-400.mix(tailwind.stone-400),
    it: tailwind.blue-200.mix(tailwind.stone-300),
    bg: tailwind.blue-50.mix(tailwind.stone-100)
    ),
  plum: (
    tx: tailwind.purple-950.mix(tailwind.stone-950),
    da: tailwind.purple-800.mix(tailwind.stone-800),
    ac: tailwind.purple-600.mix(tailwind.stone-600), 
    la: tailwind.purple-400.mix(tailwind.stone-400),
    it: tailwind.purple-200.mix(tailwind.stone-300),
    bg: tailwind.purple-50.mix(tailwind.stone-100)
    ),
  stone: ( tx: tailwind.stone-950, da: tailwind.stone-800, ac: tailwind.stone-600, la: tailwind.stone-400, it: tailwind.stone-300, bg: tailwind.stone-100 ),
  neutral: ( tx: tailwind.neutral-950, da: tailwind.neutral-800, ac: tailwind.neutral-600, la: tailwind.neutral-400, it: tailwind.neutral-300, bg: tailwind.neutral-100 ),
  zinc: ( tx: tailwind.zinc-950, da: tailwind.zinc-800, ac: tailwind.zinc-600, la: tailwind.zinc-400, it: tailwind.zinc-300, bg: tailwind.zinc-100 ),
  grey: ( tx: tailwind.gray-950, da: tailwind.gray-800, ac: tailwind.gray-600, la: tailwind.gray-400, it: tailwind.gray-300, bg: tailwind.gray-100 ),
  slate: ( tx: tailwind.slate-950, da: tailwind.slate-800, ac: tailwind.slate-600, la: tailwind.slate-400, it: tailwind.slate-300, bg: tailwind.slate-100 ),
  default: (
    tx: rdbp.romeo-950,
    da: rdbp.romeo-800,
    ac: rdbp.romeo-600,
    la: rdbp.romeo-400,
    it: rdbp.romeo-200,
    bg: rdbp.romeo-50 ),

)
#set text(font: "Iosevka SS04", size: 10pt)
#set page(margin: 0.25in, width: 6.5in, height: 8.5in, columns: 2)
#for col in palette {
  block(breakable: false)[
  #raw(col.at(0)); #v(-0.9em)
  #for i in col.at(1).values() {  
    box(square(stroke: 0pt + black, fill:i)); 
  }]; v(-0.5em)
}
count: *#palette.len()*