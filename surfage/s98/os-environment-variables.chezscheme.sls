#!chezscheme
(library (surfage s98 os-environment-variables)
  (export (rename (getenv get-environment-variable)
                  ;;(... get-environment-variables)
                  ))
  (import (chezscheme)))