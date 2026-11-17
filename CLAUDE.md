<!-- knowledge:start -->
## Knowledge wiki
This repo's wiki lives in `./wiki` (committed with the code; overview: `wiki/housing-site-int.md`). It is linked into the
shared vault at `./knowledge` (-> C:\Users\User\knowledge), where `knowledge/CLAUDE.md` holds the rules (frontmatter, wikilinks, INGEST/QUERY/LINT).
- Session start: read `knowledge/inbox/housing-site-int.md`, act on items, move them under `## Done`.
- Write the wiki to the repo wiki standard: `knowledge/REPO-WIKI.md` (layout, page types, frontmatter, links). Scaffold pages with `python knowledge/scripts/new_page.py housing-site-int architecture|decision|runbook|integration|concept "<Title>"`.
- Update the wiki page that describes a behaviour in the same change that alters it; then run `python knowledge/scripts/reindex.py` and `python knowledge/scripts/lint.py`.
- Find things with `python knowledge/scripts/search.py "<terms>"` before browsing `knowledge/wiki/INDEX.md`. Never edit `knowledge/raw/`.
<!-- knowledge:end -->
