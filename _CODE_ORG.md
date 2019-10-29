# Code Organization

### `_assets`
`X-style-docgen.scss` is the style for the `X` and `X-docgen` layouts, where
`X` can be one of `default`, `latex`, `mla`, or `slides`.

```
assets
├── css
│   ├── default-style-docgen.scss
│   ├── latex-style-docgen.scss
│   └── mla-style-docgen.scss
└── fonts
    └── ...
```

### `_examples`
These are examples of DocGen in action, and can be viewed by going to
[`a1liu.github.io/docgen`](https://a1liu.github.io/docgen).

### `_includes`

```
_includes
├── break ------------------ Shortcut for page-break-dogen
├── head-docgen.html ======= Inserts the necessary content for the head of the page. Used by files in _layouts
└── page-break-docgen ------ Inserts <div class="page-break"></div>
```

### `_layouts`

```
_layouts
├── 404-docgen.html -------- The docgen-provided layout for a 404 page
├── default-docgen.html ==== The default docgen document layout
├── default.html ----------- Shortcut for default-docgen
├── index-docgen.html ====== The docgen-provided layout for an index page
├── latex-docgen.html ------ The LaTeX docgen document layout
├── latex.html ============= Shortcut for latex-docgen
├── mla-docgen.html -------- The MLA docgen document layout
└── mla.html =============== Shortcut for mla-docgen
```

### `_sass`

```
_sass/
├── default-docgen.scss
├── docgen
│   ├── _api.scss
│   ├── _base.scss
│   ├── _layout.scss
│   ├── _syntax-highlighting.scss
│   └── _utils.scss
├── fonts
│   ├── computer-modern.scss
│   └── source-code-pro.scss
├── latex-docgen.scss
├── mla-docgen.scss
└── slides-docgen.scss
```
