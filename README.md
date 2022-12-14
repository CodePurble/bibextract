# bibextract

Extract bibliography entries from a reference BibTeX file using citations from
LaTeX sources, to create project-specific BibTeX files.

> For now, in order to work properly, both `bibx` and `ext.sh` **NEED** to be
> in the same directory. This is expected to change in a future release.

## Dependencies

- Python >= 3.5
- [`python-bibtexparser`](https://github.com/sciunto-org/python-bibtexparser)
  - [Install](https://bibtexparser.readthedocs.io/en/master/install.html#how-to-install)

## Installation

Once you have installed the dependencies, clone this repository

```sh
git clone https://github.com/CodePurble/bibextract.git
```

Run `install.sh`. By default, the files will be installed to `/usr/local`.

```sh
sudo ./install.sh
```

A custom install prefix can be also be given

```sh
./install.sh my/custom/prefix
```

> **NOTE**: To uninstall, use the provided `uninstall.sh` script. If you used a
> custom prefix while installing, make sure to use the **SAME PREFIX** when
> running `uninstall.sh` (e.g. `./uninstall.sh my/custom/prefix`)

### Updating an existing install

First, navigate to where you initially cloned this repo and pull down the latest changes:

```sh
cd path/to/repo
git pull origin master
```

Then, rerun `install.sh`. If you used a custom prefix the first time you
installed, use the same here as well for correctly updating the scripts.

## Usage

Check the help-text:

```sh
bibx -h
```

Also read the manpage:

```sh
man bibx
```

### Example

Assume that there are two LaTeX files: `a.tex` and `b.tex`, the reference
BibTeX file is `g.bib` and we want the output file to be `refs.bib`. The
command to achieve this would be:

```sh
bibx -b g.bib -o refs.bib -f a.tex b.tex

# A variation
bibx -b g.bib -o refs.bib -f *.tex
```

## Bugs

If you find a bug or are facing some problem, please [open an
issue](https://github.com/CodePurble/bibextract/issues/new/choose).

## Contributing

Contributions are welcome: features, documentation, whatever! Fork this repo
and create a new branch for your changes, please do not commit directly to the
master branch. Then create a pull-request.

Take a look at the [TODO](./TOOD.md) or
[issues](https://github.com/CodePurble/bibextract/issues) for some inspiration!

If you are updating the manpage, you will need
[`pandoc`](https://pandoc.org/index.html) to generate it from
[`bibx.1.md`](./bibx.1.md). Use the following command to generate the manpage:

```sh
pandoc --standalone --to man bibx.1.md -o bibx.1
```

### Tests

If contributing to the code, please run the following test after your edits:

```
./bibx -b test/global.bib -o test/ext.bib -f test/*.tex
diff test/ext.bib test/ext-golden.bib
```

The `diff` command must return **NOTHING**. This means that the output is as
expected for the given inputs.

## Related tools
* [bibtool](https://github.com/ge-ne/bibtool)
* [biber](https://github.com/plk/biber)

## License

Free use of this software is granted under the terms of the [GPLv3
License](https://github.com/CodePurble/bibextract/blob/master/LICENSE).
