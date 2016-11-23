(set-option :print-success false)
(set-option :produce-models true)

(set-logic AUFNIRA)

;(declare-const x Int)
;(declare-const y Real)
;(assert (= x 5))
;(assert (= y 1.234))

;(declare-sort IntNE0 0)
;(assert (not (= IntNE0 0)))

;(declare-fun divvy (Int IntNE0) Int)
;(declare-const z (divvy 5 0))

(declare-sort Seq 1)
(declare-sort A 0)

(declare-fun length (Seq A) Int)
(declare-fun append ((Seq A) A) (Seq A))

;(declare-sort A 0)
;(declare-sort B 0)
;(declare-sort C 0)
;(declare-fun f (A) B)
;(declare-fun g (B) C)
;(declare-fun h (A B) C)
;(declare-fun i (Int Real) Int)

;(declare-const z Int)
;(assert (= z (i x y)))
;(assert (> 0 z))

(check-sat)
(get-model)
