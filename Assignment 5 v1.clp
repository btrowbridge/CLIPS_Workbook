
;Assignment 5 v1 

;given facts
(deffacts given-order
        (perm A B C))

;rules
(defrule pop-append
        (perm ?item1 ?item2 ?item3)
        =>
        (assert (perm ?item2 ?item3 ?item1)))

(defrule swap
        (perm ?item1 ?item2 ?item3)
        =>
        (assert (perm ?item2 ?item1 ?item3)))
;print
(defrule print-perm
        (perm ?item1 ?item2 ?item3)
        =>
        (printout t "Found mutation: " ?item1", "?item2", "?item3 crlf))


; output
;
;         CLIPS (6.30 3/17/15)
;CLIPS> (load "Assignment 5 v1.clp")
;Defining deffacts: given-order
;Defining defrule: pop-append +j+j
;Defining defrule: swap =j+j
;Defining defrule: print-perm =j+j
;TRUE
;CLIPS> (reset)
;CLIPS> (facts)
;f-0     (initial-fact)
;f-1     (perm A B C)
;For a total of 2 facts.
;CLIPS> (rules)
;pop-append
;swap
;print-perm
;For a total of 3 defrules.
;CLIPS> (run)
;Found mutation: B, A, C
;Found mutation: C, B, A
;Found mutation: A, C, B
;Found mutation: C, A, B
;Found mutation: B, C, A
;Found mutation: A, B, C
;CLIPS>
