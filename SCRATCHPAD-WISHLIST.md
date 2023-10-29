# Definition of functionality from this module (addons to wild-theme-shell)

## General

* Preferably vanilla CSS
* Preferably vanilla JS
* Incorporate techniques from [CSS Nouveau](https://www.spicyweb.dev/building-courseware-i-understand/)

Wish to avoid SASS/PostCSS if possible.  
Wish to avoid NPM/js.Build if possible.

## General UI

* Configuration of mode to light or dark
* Cookie consent dialogue when configuration is done
	* If not accepted, no configuration is stored (warn user of this)
* Easily configurable/customizable colour schemes

## Multilingual

* Language selector
* hreflang support
* Enable / disable language(s) with 'switch' (i.e. only configuration edits)

## Technical SEO

* OpenGraph schema with social media card (image)
	* Where no cover image, use a generated card
* JSON-LD 'Schema' and 'Breadcrumbs'
* perfect (or close) PageSpeed scores
* Valid HTML5 / CSS3 (updated as browsers gain support for features)
* perfect (or close) PageSpeed scores

## Accessibility / Ease of use

### From wild-theme-shell

* Must be accessible (a11y)
* Anchor link targets
* Visual breadcrumb
* High contrast (both light and dark modes)

### New

* Also see [images](#images)

## Images

* Convert to WebP (with fallback to JPG for old Safari-iOS?)
* Responsive sizes for images
* Responsive pixel densities for images
* Generate thumbnails when requested
* LQIP and colour gradient maps with lazy loading
* TODO: Use Git-LFS and process images on build (with cache),
or do processing outside Hugo and reference images not in repo?
* Image credits / copyright notices
* Easy use of [EDCNS](https://edcns.ca) and other CC local stock photos
* Gallery and/or carousel for multiple images
* Default to use alt as caption (if it doesn't make sense as a
caption it probably doesn't make sense as an alt).
	* Needs to able to be readily styled in a spot, font, etc, that looks good
* Configurable warn or error on no alt text

## Convenience / Shortcodes

* Insert CreativeCommons license images and links using e.g. CC-BY-SA
* Emoji support
* Figure
* Img
* Svg
* Embedded PDFs
* Embedded docx
* Embedded ODF
* Subscript / superscript
* Word break (`<wbr>`) support
* Add wrapper (wrapper, wrapper-start, wrapper-end)

## Page looks

* Optionally with hero image
* Custom homepage
	* Hero image with minimal text on landing page 'above the fold'
	* Scrolls up to a mobile or desktop (multi-column) friendly intro page with
	top navbar. On desktop also has navigation sidebar. On mobile (TBD)
* Optional 'cards' on any section (list) page (as with DFD-Zen)
* Optional thumbnails in 'cards'
* Configurable layout of cards (single or multi-column etc) with responsive
design.
* Pagination for long lists
* Related articles

### Fonts

* Probably need to break down and use some kind of web font for good, and
consistent look.
* Use locally hosted fonts though (no external CDN)

## Local search

* Scalable local search using pagefind?

## Feeds

* RSS and JSON feeds with full article content
	* Make sure valid XML is generated (WIP)

## Favicons / Logo

* Based on package from RealFaviconGenerator
* Logo optional
* Part of top navbar if present

## Error pages

### 404

* Friendly
* Search (if supported)
* Sitemap (if present)
* Home (browse)

### Other errors

* Identify where it makes sense

## Redirects and Headers (choices)

* Apache2
* Netlify
* Text
* JSON
* CSV

Generate a static Content-Security-Policy (nonces not available)

## Taxonomies and Terms

* Paginate the list of pages for each term.

## HTML content-friendly

* Generating Tables of Contents, HTML sitemaps, and so on should work
correctly when using HTML content files.
* Archetypes need to include `default.html` for HTML content.
* Functionality in render-X hooks should also be available to HTML content
files via shortcodes.

## Limit use of section/list pages with content

* Content should be on regular pages.
* Manual links to pages in a section on a regular page should be the default
navigation targets rather than list pages in most cases.
* Exceptions include situations like a list of blog posts, pages in a
(taxonomy) term, and a paginated HTML sitemap.
* Therefore we want menus that don't use e.g. `mainSections` or to set
`mainSections` to an empty list so that we define the proper navigation
targets.

## Review already done features and record implemented but not listed

* [wtg-shell](https://www.wtg-demos.ca/)
* [DFD-Zen](https://www.zen-theme-hugo-wtg.wtg-demos.ca/)
