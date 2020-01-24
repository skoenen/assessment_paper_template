# LaTeX Template for HSRW Article

This is a LaTeX template as suggestion to use for articles
applied at the _University of applied sciences Rhein-Waal_

## Usage:

1. Put the contents into a of this folder inside a `template` folder inside
    your document folder.
2. Copy the files in `template/content/` to your main folder.
3. Change `document_informations.tex` to your needs
4. Change other `.tex` files to your needs.

### For Unix Users

The template includes a `Makefile`, to use it:

1. Proceed as in **Usage:** #1
2. Go to `template` folder and run `make prepare`
3. Go to main folder and run `make clean pdf`

## Compilation

Make sure your editor/gui or you are manually running the following commands in
the same order:

```Shell
  pdflatex main
  bibtex main
  makeindex -s main.ist -t main.alg -o main.acr main.acn
  makeindex -s main.ist -t main.glg -o main.gls main.glo
  makeglossaries main
  pdflatex main
  pdflatex main
```

The `Makefile` has a target to do the compilation:

```Shell
make clean pdf
```

It is available on

- Linux (mostly directly installed)
- macOS (through XCode or Developer Tools or Command Line Tools)
- Windows (through Cygwin or others)

## Manuals

We tried to include all manuals of the used packages of this template in:

```Shell
template/manuals
```

## Issues:

If you find errors and issues with the template, report them at:

<a href="mailto:stefan.koenen@hochschule-rhein-waal.de?subject=LaTeX-Template">
  Stefan Koenen @ University of applied sciences
</a>
