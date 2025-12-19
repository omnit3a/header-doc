# header-doc
personal emacs plugin that allows for easy automation of file comments. works with any of the languages that I program in.

# supported languages
- emacs lisp
- lisp
- racket
- scheme
- nasm
- python
- c/c++
- haskell

# usage
`M-x header-doc-create` prompts the user for the amount of lines of comments, then creates the comment section at the start of the file.<br>
`M-x header-doc-includes-c` adds three comment lines (`standard library`, `external libraries`, `internal headers`) from the current cursor position.
only works if in c-mode.

# file header-doc format
note that this example is using C-style comment notation, but header-doc will automatically change comment styles
depending on the language being used.
```
// <filename>
// <insert notes here>
//
//
// created: <day/month/year>
```
