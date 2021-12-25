# [lxylxy123456.github.io](https://lxylxy123456.github.io)
* Personal homepage using [https://pages.github.com/](https://pages.github.com/)

## Sphinx notes
From Dec 24, 2021, use Sphinx and Read The Docs theme.

Notes on setting up Sphinx:
```
sudo pip3 install sphinx recommonmark sphinx_rtd_theme
sphinx-quickstart
vi conf.py
	extensions = ['recommonmark']
	html_theme = 'sphinx_rtd_theme'
```

Sphinx source directory is `/src`, `build html` will create the website root
in `/src/_build/html`. GitHub wants the website root to be at `/docs`, so
we use a symbolic link. This is done automatically using `/build.sh`

Reference:
<https://tech.michaelaltfield.net/2020/07/18/sphinx-rtd-github-pages-1/>

