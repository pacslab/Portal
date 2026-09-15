# PACS Lab — Research Portal

Website for the **Performant and Available Computing Systems (PACS) Lab** at York
University (Lassonde School of Engineering, EECS Department), built with
[Hugo](https://gohugo.io/) and the
[Hugo Blox Research Group](https://github.com/HugoBlox/theme-research-group) theme.

The site uses a **modern dark theme** and migrates all content from the previous
site at `pacs.eecs.yorku.ca`: home/about, research areas, people (current members
and alumni), 70+ publications (2006–2026), news, gallery, resources, prospective
students, and contact.

## Prerequisites

- **Hugo Extended** ≥ v0.135 (this site was built with v0.140.2 extended)
- **Go** ≥ v1.20 (required to fetch Hugo Modules)
- **Git**

### Installing Hugo Extended

Download the `hugo_extended_*_linux-amd64.tar.gz` binary from the
[Hugo releases page](https://github.com/gohugoio/hugo/releases) and place `hugo`
on your `PATH`. Verify with:

```bash
hugo version   # must contain "+extended"
```

## Local development

```bash
# Fetch theme modules (first run only)
hugo mod get

# Live preview at http://localhost:1313
hugo server
```

## Build for production

```bash
hugo --gc --minify
```

The static site is generated into the `public/` directory. Deploy the **contents
of `public/`** to any web server (Apache, Nginx, a department server, etc.).

> The site is configured with `baseURL: '/'`, so it works when served from the
> root of any domain. If you deploy it under a sub-path (e.g.
> `https://server/pacs/`), set `baseURL` accordingly in
> `config/_default/hugo.yaml` and rebuild.

## Project structure

```
config/_default/     Site configuration (hugo.yaml, params.yaml, menus.yaml, module.yaml)
content/
  _index.md          Home page (hero, about, news, publications)
  research/          Research areas
  people/            Team page + alumni; profiles live in content/authors/
  authors/           Individual member profiles
  publication/       One folder per publication
  post/              News items (one folder each)
  gallery/           Photo gallery
  resources/         Resources & links
  prospective/       Prospective students / how to apply
  contact/           Contact information
data/themes/pacs.toml   Custom modern dark color theme
```

## Editing content

- **Add a team member:** create `content/authors/<name>/_index.md` (copy an
  existing profile) and set `user_groups`. Add an `avatar.jpg` in the same folder
  for a photo.
- **Add a publication:** create `content/publication/<slug>/index.md` with YAML
  front matter (`title`, `authors`, `date`, `publication_types`, `publication`).
- **Add news:** create `content/post/<slug>/index.md` with `title` and `date`.

## Theme / appearance

Dark mode is forced site-wide: `theme_day` is left empty and `theme_night: pacs`
in `config/_default/params.yaml`, and the day/night toggle is hidden. Colors are
defined in `data/themes/pacs.toml`.

## License

Content © PACS Lab, York University. Theme licensed under the terms in
`LICENSE.md`.
