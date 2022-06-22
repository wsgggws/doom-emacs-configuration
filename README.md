# doom-emacs-configuration

Doom Emacs = Emacs + VIM

## common

- spc fr (recently file)
- spc fp (private configuration)
- spc pp (choice projects)
- spc spc (fuzzy search file in current projects)
- spc bb (search buffer in current projects buffers)

## ui

- spc ht (choice theme)
- spc ti (toggle indent)
- spc tm (toggle minimap)
- spc t\*

## evil

### Ported vim plugins

- (gc) evil-nerd-commenter
- (gs) evil-easymotion
- (gl) evil-lion
- (s) evil-snipe
- (S) evil-embrace and evil-surround

### Custom Text Objects

- =w W= words
- =s= sentences
- =p= paragraphs
- =b= parenthesized blocks
- =b ( ) { } [ ] < >= braces, parentheses and brackets
- =' " `= quotes
- =t= tags
- =o= symbols

And these are text objects added by this module:

- =a= C-style function arguments (provided by ~evil-args~)
- =B= any block delimited by braces, parentheses or brackets (provided by
  ~evil-textobj-anyblock~)
- =c= Comments
- =f= For functions (but relies on the major mode to have sane definitions for
  ~beginning-of-defun-function~ and ~end-of-defun-function~)
- =g= The entire buffer
- =i j k= by indentation (=k= includes one line above; =j= includes one line
  above and below) (provided by ~evil-indent-plus~)
- =q= For quotes (any kind)
- =u= For URLs
- =x= XML attributes (provided by ~exato~)

## magit

- spc gg
- ll (git lg)
- s (git add)
- dd (git diff)
- cc (git commit)
- F (git pull)
- p (git push)
- q (exit)

## python-mode

- snippets (yasnippets-snippets doomemacs-snippets)
- company (+lsp)
- linter (python-flake8)
- formater (black)
- quickrun
- test (pytest)

## terminal

- spc o[tT] (toggle [BIG] vterm)

## help, it's very helpful; )

- spc hv (help variable)
- spc hf (help function)
- spc hm (help module)
