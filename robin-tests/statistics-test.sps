#!chezscheme
;; Test file for (robin statistics)

(import (scheme base)
        (scheme case-lambda)
        (scheme char)
        (robin statistics)
        (scheme list)
        (surfage s64 testing)
        (robin srfi64-utils))

(test-begin "robin-statistics")

(test-equal 3 (mean '(1 2 3 4 5)))
(test-equal 7/2 (arithmetic-mean '(1 2 3 4 5 6)))
(test-approx-same 2.605 (geometric-mean '(1 2 3 4 5)))
(test-equal 300/137 (harmonic-mean '(1 2 3 4 5)))
(test-equal 3 (median '(1 2 3 4 5)))
(let-values (((modes count) (mode '(1 2 2 3 4 4 5 6))))
            (test-equal '(2 4) modes)
            (test-equal 2 count))
(test-equal 5/2 (variance '(1 2 3 4 5)))
(test-equal 2 (population-variance '(1 2 3 4 5)))
(test-approx-same 52.705 (coefficient-of-variation '(1 2 3 4 5)))
(test-approx-same 0.707 (standard-error-of-the-mean '(1 2 3 4 5)))

(test-equal 1 (sign 3))
(test-equal 0 (sign 0))
(test-equal -1 (sign -3))

(test-assert (member (random-pick '(1 2 3 4)) '(1 2 3 4)))
(test-assert (= 3 (length (random-sample 3 '(1 2 3 4 5)))))
(test-equal '(1 2 3) (random-sample 3 '(1 2 3)))
(test-equal '() (random-sample 0 '(1 2 3)))
(test-equal 3/7 (jaccard-index '(1 2 3 4 5) '(3 4 5 6 7)))
(test-equal 0 (jaccard-index '("a" "b" "c") '("A" "B" "F")))
(test-equal 1/2 (jaccard-index '("a" "b" "c") '("A" "B" "D") string-ci=?))
(test-equal 4/7 (jaccard-distance '(1 2 3 4 5) '(3 4 5 6 7)))
(test-equal 3/5 (sorenson-dice-index '(1 2 3 4 5) '(3 4 5 6 7)))
(test-equal 0 (sorenson-dice-index '("a" "b" "c") '("A" "B" "D")))
(test-equal 2/3 (sorenson-dice-index '("a" "b" "c") '("A" "B" "D") string-ci=?))

(test-approx-same 0.136919958784 (perlin-noise 3.14 42 7) 0.00000000001) ; test used on Rosetta code

(test-end)

