# DocGen
DocGen is a document generation helper built using Jekyll, as an alternative to
LaTeX for the uninitiated. It is NOT for blogging.

Uses MathJax for custom styles.

### CSS API
Some of the available styles are easier to use without an `include`.

- `div.page-break` - A page break.
- `div.display` - A `div` that follows flexbox wrapping rules.
- `div.utf-box-drawing` - A `div` where contained `pre` and `code` blocks support
  utf box drawing.
- `ol.heirarchical` - A list that supports the numbered-lettered-numeraled structure.
- `.citation-docgen .citation-number-docgen` - Citation classes. You should consider
  using the `citation` include instead.

### Layouts

#### Documents
- `default-docgen` - Base layout for docgen.
- `latex-docgen` - Emulates a latex document.
- `mla-docgen` - Emulates an MLA-style document, i.e. 12pt Times New Roman with header.

#### Utility Pages
- `index-docgen` - Utility page that lists all documents.
- `404-docgen` - Utility page for handling 404 errors.
- `default` - shortcut for `default-docgen`.
- `latex` - shortcut for `latex-docgen`.
- `mla` - shortcut for `mla-docgen`.

### Page & Site Properties
- `lang` - Set the language in `_config.yml` or in the front matter
- `mla` & `mla-docgen` - In the front matter, you can set:
  - `author`
  - `instructor`
  - `course`
  - `date`

  All of which are copied verbatim. You can also set `title` in the front matter,
  which is copied verbatim into own paragraph where the MLA standard says it should go.

