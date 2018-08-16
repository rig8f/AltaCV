# AlterCV, yet another LaTeX CV/Résumé class

AlterCV is an enhanced version of [AltaCV](https://github.com/liantze/AltaCV).
The original class was written by LianTze Lim (liantze@gmail.com).

It enables some advanced features and new commands, like links (they still have to be set manually) and progressbar style for skills.
It is also completely grayscale based (print-ready) by default, except of the photo: colors can be set in the document.

A good idea is to use a boolean to quickly switch between color and b/w version:

```latex
\newif\ifcolor
\colortrue % change to \colorfalse to use default colors

...

\ifcolor
    % define here colors (already in sample template)
    \definecolor{Azure}{HTML}{0077FF}
    \colorlet{links}{Azure}
\fi
```

The full stack of changes can be viewed in the [changelog](CHANGELOG.md) file.

Note that sample images are outdated, but PDF files are not: please refer to them when searching for how the final CV will look like.

This package is currently _not_ available neither in CTAN nor in Overleaf.

## Legal disclaimer

In the process of enhancing AltaCV, I chose to rename it only to be able to make my version public.
I retained comments about changes between versions of AltaCV, and my changes are in a separate file, as required by the license.
Clearly, looking at Git commits is also a good way to detect changes between versions.
I also chose to keep the same license, so I simply updated names, giving full credit to the author of the original class: I thank her for the beautiful work she has done.

---

Here follows the original README from AltaCV.

(Thanks to [Nur](https://github.com/nurh) for the name.)

It all started with this:

[<img src="tweet-that-started-this.png" width="500px">](https://twitter.com/Leonduck/status/764281546408923136)

Leonardo was talking about a [résumé of Marissa Mayer that Business Insider put together](http://www.businessinsider.my/a-sample-resume-for-marissa-mayer-2016-7/) using [enhancv.com](https://enhancv.com).
I _knew_ I had to do something about it. And so AltaCV was born.

## Samples

This is how the re-created résumé looks like ([view/open on Overleaf](https://www.overleaf.com/latex/examples/recreating-business-insiders-cv-of-marissa-mayer-using-altacv/gtqfpbwncfvp)):

<img src="mmayer.png" alt="Marissa Mayer's résumé, re-created with AltaCV" width="600px">

Though if you're creating your own CV/résumé, you'd probably prefer using the basic template ([view/open on Overleaf](https://www.overleaf.com/latex/templates/altacv-template/trgqjpwnmtgv)):

<img src="sample.png" alt="sample barebones AltaCV template" width="600px">


## Requirements and Compilation

* pdflatex + biber + pdflatex
* AlterCV and AltaCV use [`fontawesome`](http://www.ctan.org/pkg/fontawesome) and [`academicons`](http://www.ctan.org/pkg/academicons); they're included in both TeX Live 2016 and MikTeX 2.9.
* Loading `academicons` is optional: enable it by adding the `academicons` option to `\documentclass`.
* Can now be compiled with pdflatex, XeLaTeX and LuaLaTeX!
* However if you're using `academicons`, you _must_ use either XeLaTeX or LuaLaTeX. If the doc then compiles but the icons don't show up in the output PDF, try compiling with LuaLaTeX instead.
* The samples here use the [Lato](http://www.latofonts.com/lato-free-fonts/) font.
