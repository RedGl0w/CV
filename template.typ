#import "@preview/fontawesome:0.6.0"
#let margin = 1.3cm;
#let linesize = 2cm;

#let contact(entries) = {
  let res = ()
  for k in entries.keys() {
    let em = k
    if (k.starts-with("fa")) {
      em = eval(k + "()", scope: dictionary(fontawesome))
    }
    res.push([
      #align(center, em)
    ])
    res.push({
      set par(spacing: .4em)
      entries.at(k)
    })
  }

  grid(
    column-gutter: 1pt,
    row-gutter: .5em,
    align: horizon,
    columns: 2,
    ..res
  )

}

#let entry(date, title, org, location, details) = {
  v(8pt)
  let loc_format = ();
  if (org != [] and location != []) {
    loc_format = ([], [#org, #emph(location)])
  }
  grid(
    column-gutter: 4pt,
    row-gutter: 8pt,
    columns: (linesize, auto),
    align(right, date),
    heading(level: 2, title),
    ..loc_format,
    [],
    details
  )
}

#let resume(firstname: "", lastname: "", title: "", photo: "", accent: rgb("#865e22"), side: [], body) = {
  set block(above: 0pt, below: 0pt)
  set page(margin: 0pt)
  set par(leading: .45em, justify: true)
  set document(
    author: firstname + " " + lastname,
    title: "CV de " + firstname + " " + lastname
  )

  show link: it => text(blue.darken(50%), it)

  grid(
    columns: (1fr, 2fr),
    grid.cell(
      fill: accent.lighten(85%),
      block(
        height: 100%,
        inset: (left: margin, top: margin, bottom: margin, right: margin/4),
        {
          {
            show heading.where(level: 1): set text(25pt)
            show heading.where(level: 2): set text(13pt)

            image(photo, width: 100%)
            heading(level: 1, [#firstname \ #lastname])
            heading(level: 2, title)
          }
          {
            show heading: set text(fill: accent)
            set par(spacing: .5em)
            side
          }
        }
      )
    ),
    block(inset: (left: margin/4, right: margin, top: margin, bottom: margin))[
      #show heading.where(level: 1): it =>  {
        stack(
          dir: ltr, spacing: margin/4,
          align(horizon, line(length: linesize, stroke: accent)),
          text(size: 18pt, fill: accent, smallcaps(it))
        )
      }
      #show heading.where(level: 2): set text(12pt)
      #set text(10pt)
      #body
    ]
  )
}
