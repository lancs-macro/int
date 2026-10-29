---
title: housing-site-int
type: project
status: active
created: 2026-10-27
updated: 2026-10-29
sources: []
scope: housing-observatory
tags: [project, frontend]
verified_commit: 63e5543c33693e37c78db88953f9295de7b68380
files: [index.html, README.md, components, data, nowcasting, assets/js]
---
# housing-site-int

Static site of the International Housing Observatory: charts, quarterly reports, a nowcasting page and the embedded international dashboard.

Part of [[concepts/housing-observatory]]. GitHub: `lancs-macro/int`.

## Stack
Plain HTML/CSS/JS with C3 line charts (`assets/js/linechart*.js`). Charts load JSON from the data API ([[projects/housing-api/housing-api]]): `api.housing-observatory.com/visualizations/int/rhpi` and `rhpi_yoy`. The dashboard is embedded from Posit Connect Cloud ([[projects/idash/idash]]).

## Run and test
Serve the folder statically. No build step.

## Layout
- Pages: `index.html`, `about.html`, `dashboard.html`, `nowcasting.html`, `reports.html`, `resources.html`, `disclaimer.html`, `404.html`
- `components/` header, nav, footer partials
- `data/countries.json`, `data/reports.json`
- `nowcasting/` R Markdown forecast report with its rendered HTML and charts
- `reports/` one page per quarterly report

## Publishing a quarterly report (from `README.md`)
1. Create `reports/versions/<yyyyQq>/` (for example `2024q1`), move the Rmd there and render it to `report.html`.
2. Copy an existing page in `reports/` to `reports/<version>.html` and point its iframe at `versions/<version>/report.html` (adjust the height if needed).
3. Add a card for it to `reports.html` and a teaser block to `index.html`.
4. Push to GitHub.

## Unknowns
- Hosting: no deploy config in the repo (unverified).
- `reports/` is empty in this checkout, so the rendered versions are not here.

Related: [[concepts/housing-observatory]], [[conventions]], [[inbox/housing-site-int]].
