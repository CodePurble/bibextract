% BIBX(1) Version 1.0 | bibx Command Documentation

# NAME

bibx — Extract bibliography entries from a reference BibTeX file using
citations from LaTeX sources, to create project-specific BibTeX files.

# SYNOPSIS

bibx \[-h] \[-v] \[-o OUTPUT] \[-e ENTRIES] \[-q] \[-f FILES [FILES ...]] \[-i INDENT] \[-d] \[-b BIB]

# DESCRIPTION

This program extracts citations made in LaTeX source files and generates a
BibTeX file with entries that are found. In order to generate the BibTeX file,
a single "global" BibTeX file that acts as a database to look for matching
entries. Output is written to 'ext.bib' by default. Requires at least one LaTeX
source.

If extra entries other than those found from the LaTeX sources are to be added
to the output file, it can be done by using the -e option. The file
must contain a single BibTeX label on each line.

For example:
```
label1
label2
label3
```

# OPTIONS

-h, \--help

    Show help and exit

-v, \--version

    Show version information and exit

-b BIB, \--bib BIB

    Specify global BibTeX file to look for entries in (required if not using -h
    or -v)

-f FILES [FILES ...], \--files FILES [FILES ...]

    LaTeX files to scan for citations whose BibTeX entries need to be extracted
    (required if not using -h or -v)

-o OUTPUT, \--output OUTPUT

    Specify file to write the BibTeX output to. Defaults to './ext.bib'.

-e ENTRIES, \--entries ENTRIES

    Specify file containing extra entries names to be searched and included in
    the final output.

-i INDENT, \--indent INDENT

    Specify the character(s) to be used to indent the BibTeX entries in the
    final output. Defaults to four spaces. Example: -i "  " (use two spaces).

-d, \--dryrun

    Perform a dry-run, i.e. do not output to a file, just print info messages.
    Ignores the -o option, affected by -q.

-q, \--quiet

    Suppress output to stdout

# EXAMPLE

Assume that there are two LaTeX files: `a.tex` and `b.tex`, the reference
BibTeX file is `g.bib` and we want the output file to be `refs.bib`.

The command to achieve this would be:
```
bibx -b g.bib -o refs.bib -f a.tex b.tex
```

# BUGS

See GitHub issues: https://github.com/CodePurble/bibextract/issues

# AUTHOR

Ramprakash C (https://github.com/CodePurble)

# COPYRIGHT

Free use of this software is granted under the terms of the GPLv3 License.

See: https://github.com/CodePurble/bibextract/blob/master/LICENSE

# SEE ALSO

bibtex(1), latex(1)
