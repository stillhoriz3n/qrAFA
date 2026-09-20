# qrAFA — DO NOT DELETE, DO NOT RENAME, DO NOT ARCHIVE

This repository exists only to keep one URL alive:

    https://stillhoriz3n.github.io/qrAFA/

**AFA has that URL printed on physical collateral.** The print cannot be
re-pointed. If this repo is deleted, renamed, made private, transferred to
another owner, or has GitHub Pages turned off, every printed QR code stops
working — and there is no way to fix it except reprinting.

The Pages URL is derived from **owner + repo name**. Both must stay exactly
`stillhoriz3n` / `qrAFA`.

## What it does

`index.html` is a redirect stub (meta refresh + JS fallback). It currently
sends visitors to:

    https://afalabs.com/forms-links/

## Changing where the QR code points

Do **not** reprint anything. Change the destination here:

    ./update_redirect.sh https://new-destination.example/

That rewrites `index.html`, commits, and pushes. Pages redeploys in ~1 minute.
Run it with no arguments to print the current destination.

## History

Deleted 2026-09-20 during an archive consolidation (its contents had been
merged into `Horizen-IT-Services/Attic`), which took the printed QR codes
offline. Restored the same day from the Attic copy. Do not let it get swept
into a cleanup again.
