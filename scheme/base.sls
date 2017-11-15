#!chezscheme

(library (scheme base)
         (export
_
;; from R7RS draft 4
* + - ... / < <= = => > >= abs and append apply assoc assq assv begin
binary-port?  boolean? bytevector-copy bytevector-copy! bytevector-copy-partial
bytevector-copy-partial! bytevector-length bytevector-u8-ref bytevector-u8-set!
bytevector?  caaaar caaadr caaar caadar caaddr caadr caar cadaar cadadr
cadar caddar cadddr caddr cadr call-with-current-continuation
call-with-port call-with-values call/cc car case cdaaar cdaadr cdaar cdadar
cdaddr cdadr cdar cddaar cddadr cddar cdddar cddddr cdddr cddr cdr ceiling
char->integer char-ready? char<=? char<? char=? char>=? char>? char?
close-input-port close-output-port close-port complex? cond cond-expand cons
current-error-port current-input-port current-output-port define 
define-record-type define-syntax define-values denominator do dynamic-wind
else eof-object?  eq? equal? eqv?  error error-object-irritants 
error-object-message error-object?  even? exact->inexact exact-integer-sqrt
exact-integer?  exact? expt floor flush-output-port for-each gcd 
get-output-bytevector get-output-string guard if inexact->exact
inexact? input-port? integer->char integer? lambda lcm length let let*
let*-values let-syntax let-values letrec letrec* letrec-syntax list list->string
list->vector list-copy list-ref list-set! list-tail list? make-bytevector 
make-list make-parameter make-string make-vector map max member memq memv min
modulo negative? newline not null? number->string number? numerator odd?
open-input-bytevector open-input-string open-output-bytevector
open-output-string or output-port? pair? parameterize peek-char peek-u8
port-open?  port? positive? procedure?  quasiquote quote quotient raise
raise-continuable rational? rationalize read-bytevector read-bytevector!
read-char read-line read-u8 real?  remainder reverse round set! set-car!
set-cdr!  string string->list string->number string->symbol string->utf8
string->vector string-append string-copy string-fill!  string-for-each
string-length string-map string-ref string-set! string<=?  string<? string=?
string>=?  string>? string? substring symbol->string symbol? syntax-error
syntax-rules textual-port? truncate u8-ready? unless unquote
unquote-splicing utf8->string values vector vector->list
vector->string vector-copy vector-fill! vector-for-each vector-length
vector-map vector-ref vector-set! vector?  when with-exception-handler
write-bytevector write-char write-partial-bytevector write-u8 zero?

exact boolean=? symbol=? inexact identifier-syntax assert
features
   )
         (import (except (r7b-impl base) current-error-port current-input-port current-output-port)
		 (only (chezscheme) exact boolean=? symbol=? inexact identifier-syntax assert current-error-port current-input-port current-output-port)
		 (scheme base features))
	 )

#;
(real-valued? rational-valued? integer-valued? div mod div-and-mod div0 mod0 div0-and-mod0 assertion-violation)
