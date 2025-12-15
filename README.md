# header-doc
personal emacs plugin that allows for easy automation of file info comments. Works with any of the languages that I program in.

# supported languages
- emacs lisp
- racket
- scheme
- nasm
- python
- c/c++
- haskell

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
// created: <day/month/year>
```
