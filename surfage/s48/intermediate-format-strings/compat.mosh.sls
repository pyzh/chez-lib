#!chezscheme
(library (surfage s48 intermediate-format-strings compat)
  (export pretty-print)
  (import (rename (only (mosh pp) pp)
                  (pp pretty-print)))
)
