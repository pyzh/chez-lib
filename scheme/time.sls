#!chezscheme

(library (scheme time)
        (export current-jiffy current-second jiffies-per-second)
        (import (r7b-impl time)))
