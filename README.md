# header-doc
personal emacs plugin that allows for easy automation of file info comments. (Aims to be) Language agnostic

# supported languages
- c
- python
- emacs lisp
- racket

# usage
`M-x header-doc-create` creates the comment section at the start of the file.

# format
note that this example is using C-style comment notation, but header-doc will automatically change comment styles
depending on the language being used.
```
// <filename>
// <insert notes here>
//
//
// (C) <month/year>
```
